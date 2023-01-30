unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxStatusBar,
  AdvPageControl, Vcl.ComCtrls, dxBarBuiltInMenu, cxPC, cxContainer, cxEdit,
  cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmMain = class(TForm)
    statusBar: TdxStatusBar;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsOrganizations: TDataSource;
    dsKeys: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButtonEdit: TcxButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEditClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses
  uDatamodule, uEditOrganization, uEditKey, uEditBase;

{$R *.dfm}

procedure TfrmMain.cxButton1Click(Sender: TObject);
var
  frm: TfrmEditOrganization;
begin
  try
    frm := TfrmEditOrganization.Create(self);
    frm.formMode := mode_append;
    frm.ShowModal;
  finally
    freeAndNil(frm);
  end;
end;

procedure TfrmMain.cxButton3Click(Sender: TObject);
var
  frm: TfrmEditKey;
begin
  try
    frm := TfrmEditKey.Create(self);
    frm.formMode := mode_append;
    frm.ShowModal;
  finally
    freeAndNil(frm);
  end;
end;

procedure TfrmMain.cxButton4Click(Sender: TObject);
var
  frm: TfrmEditKey;

begin

  try
    frm := TfrmEditKey.Create(self);
    frm.formMode := mode_edit;
    frm.CurrentOrganizationId := dm.qOrganizations.FieldByName('organization_id').AsInteger;
    frm.CurrentKey := dm.qOrganizations.FieldByName('Key').AsString;
    frm.CurrentDateStart := dm.qOrganizations.FieldByName('date_start').AsDateTime;
    frm.CurrentDateEnd := dm.qOrganizations.FieldByName('date_end').AsDateTime;
    frm.CurrentisLocked := dm.qOrganizations.FieldByName('isLocked').AsBoolean;

    frm.ShowModal;
  finally
    freeAndNil(frm);
  end;




end;

procedure TfrmMain.cxButtonEditClick(Sender: TObject);
var
  frm: TfrmEditOrganization;
begin
  try
    frm := TfrmEditOrganization.Create(self);
    frm.formMode := mode_edit;
    frm.organizationID := dm.qOrganizations.FieldByName('Id').AsInteger;
    frm.currentName := dm.qOrganizations.FieldByName('Name').AsString;
    frm.ShowModal;
  finally
    freeAndNil(frm);
  end;

end;

procedure TfrmMain.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxButtonEdit.Click;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.closeAll;
  dm.DBConnection.Disconnect;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  dm.DBConnection.Connect;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  s_tmp: TFilename;
begin
  s_tmp := ExtractFilePath(ParamStr(0)) + 'data.db';
  if fileExists(s_tmp) then
    statusBar.Panels[0].Text := s_tmp else
    statusBar.Panels[0].Text := 'Не удалось подключиться к БД';
    dsOrganizations.DataSet := dm.qOrganizations;
    dsKeys.DataSet := dm.qKeys;
    dm.qOrganizations.Open;
    dm.qKeys.Open;
end;

end.
