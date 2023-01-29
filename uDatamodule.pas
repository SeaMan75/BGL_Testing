unit uDatamodule;

interface

uses
  System.SysUtils, System.Classes, DBAccess, Uni, Data.DB, MemDS, UniProvider,
  SQLiteUniProvider;

const
  RESULT_OK = 0;
  RESULT_FAIL = -1;

type
  TDm = class(TDataModule)
    DBConnection: TUniConnection;
    updateMain: TUniUpdateSQL;
    SQLiteUniProvider: TSQLiteUniProvider;
    qOrganizations: TUniQuery;
    qKeys: TUniQuery;
    UniSQL: TUniSQL;
    qOrganizationsid: TIntegerField;
    qOrganizationsname: TStringField;
    qKeyskey_id: TIntegerField;
    qKeyskey: TMemoField;
    qKeysdate_start: TDateField;
    qKeysdate_end: TDateField;
    qKeysorganization_id: TMemoField;
    qKeysKeyLocked: TMemoField;
    qKeysorganization_name: TStringField;
    procedure DBConnectionBeforeConnect(Sender: TObject);
    procedure DBConnectionAfterConnect(Sender: TObject);
  private
    procedure closeOrganizationKey;
    { Private declarations }
  public
    procedure closeAll;
    procedure openOrganizationList;
    procedure openOrganizationKeys;
    procedure closeOrganizationKeys;
    procedure closeOrganization;
    function appendOrganization(aOrganizationName: String):integer;
    function appendKey(aOrganizationId: Integer; aKey: String;
            aDateStart, aDateEnd: TDate;
            aIsLocked: boolean): Integer;

    function editOrganization(aOrganizationName: String; aId: Integer):integer;
  end;

var
  dm: TDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses
  uUtilities;


{ TDataModule1 }

procedure TDm.closeAll;
begin
  if qOrganizations.Active then
     qOrganizations.Close;

  if qKeys.Active then
     qKeys.Close;
end;

procedure TDm.closeOrganization;
begin
  if qOrganizations.Active then
    qOrganizations.Close;
end;

procedure TDm.closeOrganizationKey;
begin
  qKeys.Open;
end;

procedure TDm.closeOrganizationKeys;
begin
  qKeys.Close;
end;

procedure TDm.DBConnectionAfterConnect(Sender: TObject);
begin

  DBConnection.ExecSQL(
      'CREATE TABLE IF NOT EXISTS "tbl_organizations" ( ' +
  	  '"id"	INTEGER NOT NULL, ' +
    	'"name"	Varchar(32) NOT NULL, ' +
    	'PRIMARY KEY("id" AUTOINCREMENT));'
  );

  DBConnection.ExecSQL(
      'CREATE TABLE IF NOT EXISTS "tbl_organization_key" ( ' +
      '"id"	INTEGER NOT NULL, ' +
      '"key"	GUID NOT NULL, ' +
      '"date_start"	DATE NOT NULL, ' +
      '"date_end"	DATE NOT NULL, ' +
      '"organization_id"	LONG NOT NULL, ' +
      '"isLocked"	BOOL NOT NULL, ' +
      'PRIMARY KEY("id" AUTOINCREMENT) ' +
    ');'
  );

end;

procedure TDm.DBConnectionBeforeConnect(Sender: TObject);
begin
  DBConnection.ProviderName := 'SQLite';
  DBConnection.Database := ExtractFilePath(ParamStr(0)) + 'data.db';
  DBConnection.SpecificOptions.Values['ClientLibrary'] :=
    ExtractFilePath(ParamStr(0))+'sqlite3.dll';
  DBConnection.SpecificOptions.Values['ForceCreateDatabase'] := 'true';
end;

function TDm.editOrganization(aOrganizationName: String; aId: Integer): integer;
begin
  if not DBConnection.InTransaction then
    DBConnection.StartTransaction;

  try

    UniSQL.SQL.Text := 'UPDATE tbl_Organizations SET '+
        'NAME = :name WHERE id = :id;';

    UniSQL.ParamByName('name').AsString := aOrganizationName;
    UniSQL.ParamByName('id').AsInteger := aId;
    UniSQL.Execute;
    DBConnection.Commit;
    result := RESULT_OK;
  except
    DBConnection.Rollback;
    result := RESULT_FAIL;
  end;


end;

procedure TDm.openOrganizationKeys;
begin

end;

procedure TDm.openOrganizationList;
begin
  qOrganizations.Open;
end;

function TDm.appendKey(aOrganizationId: Integer; aKey: String;
            aDateStart, aDateEnd: TDate;
            aIsLocked: boolean): Integer;
begin
  //Добавление нового ключа с проверкой на наличие дубликатов ключей...
  if not DBConnection.InTransaction then
    DBConnection.StartTransaction;

  try

    UniSQL.SQL.Text := 'INSERT INTO tbl_organization_key '+
      '(key, date_start, date_end, organization_id, isLocked) '+
        'VALUES (:key, :date_start, :date_end, :organization_id, :isLocked) ' +
      'WHERE NOT EXISTS (SELECT id FROM tbl_organization_key WHERE ' +
      'organization_id = :organization_id AND key = :key);';

    UniSQL.ParamByName('key').AsString := aKey;
    UniSQL.ParamByName('date_start').AsDate := aKey;
    UniSQL.ParamByName('date_end').AsDate := aKey;
    UniSQL.ParamByName('organization_id').AsInteger := aKey;
    UniSQL.ParamByName('isLocked').AsBoolean := aKey;

    logString(UniSQL.SQL.Text);

    UniSQL.Execute;
    DBConnection.Commit;
    result := RESULT_OK;
  except
    DBConnection.Rollback;
    result := RESULT_FAIL;
  end;


end;

function TDm.appendOrganization(aOrganizationName: String): integer;
begin

  if not DBConnection.InTransaction then
    DBConnection.StartTransaction;

  try

    UniSQL.SQL.Text := 'INSERT INTO tbl_Organizations (name) '+
        'VALUES (:name)';

    UniSQL.ParamByName('name').AsString := aOrganizationName;
    UniSQL.Execute;
    DBConnection.Commit;
    result := RESULT_OK;
  except
    DBConnection.Rollback;
    result := RESULT_FAIL;
  end;

end;






end.
