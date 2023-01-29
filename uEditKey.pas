unit uEditKey;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uEditBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCheckBox, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, Data.DB,
  Vcl.DBLookup, Vcl.DBCtrls, dxStatusBar;

type
  TfrmEditKey = class(TfrmEditBase)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    textEditKey: TcxTextEdit;
    labelDate1: TcxLabel;
    labelDate2: TcxLabel;
    dateEditStart: TcxDateEdit;
    dateEditEnd: TcxDateEdit;
    checkBoxLocked: TcxCheckBox;
    dsOrganization: TDataSource;
    cxLookUpComboBoxOrg: TcxLookupComboBox;
    procedure lookup1PropertiesCloseUp(Sender: TObject);
  private
    procedure btnOkClick; override;
    procedure doFormShow; override;

  public
    { Public declarations }
  end;

var
  frmEditKey: TfrmEditKey;

implementation

{$R *.dfm}
uses
  uDatamodule, uUtilities;

{ TfrmEditKey }

procedure TfrmEditKey.btnOkClick;
var
  sKey :Integer;
  orgId: Integer;
  dateStart
  , dateEnd: TDate;
  isLocked: Boolean;

begin

  sKey := trim(textEditKey.Text);



  if (sKey <> '')
  and (orgId <> -1)
  and not VarIsNull(dateStart)
  and not VarIsNull(dateEnd) then
  begin
      if fMode = mode_append then
      begin
        dm.appendKey(orgId, sKey, dateEditStart, dateEditEnd, isLocked );
        modalResult := mrOK;
        dm.qKeys.Refresh;

      end else
      begin
        dm.editOrganization(sname, fId);
        modalResult := mrOK;
        dm.qOrganizations.Refresh;
      end
  end;

end;

procedure TfrmEditKey.doFormShow;
begin
  dm.openOrganizationList;

end;

procedure TfrmEditKey.lookup1PropertiesCloseUp(Sender: TObject);

begin

 { with TcxDBLookupComboBox(Sender) do
  begin
    .......
  end;}

end;

end.

