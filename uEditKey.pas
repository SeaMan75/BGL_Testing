unit uEditKey;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uEditBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCheckBox, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, Data.DB,
  Vcl.DBLookup, Vcl.DBCtrls, dxStatusBar, cxButtonEdit;

type
  TfrmEditKey = class(TfrmEditBase)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    labelDate1: TcxLabel;
    labelDate2: TcxLabel;
    dateEditStart: TcxDateEdit;
    dateEditEnd: TcxDateEdit;
    checkBoxLocked: TcxCheckBox;
    dsOrganization: TDataSource;
    cxLookUpComboBoxOrg: TcxLookupComboBox;
    cxButtonEditGUID: TcxButtonEdit;
    procedure cxLookUpComboBoxOrgPropertiesCloseUp(Sender: TObject);
    procedure cxButtonEditGUIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    fCurrentOrganizationId: Integer;
    fCurrentKey: string;
    fCurrentDateStart, fCurrentDateEnd: TDate;
    fCurrentisLocked: Boolean;
    procedure btnOkClick; override;
    procedure doFormShow; override;

  public
    property CurrentOrganizationId  : Integer;
    property CurrentKey             : string;
    property CurrentDateStart       : TDate;
    property CurrentDateEnd         : TDate;
    property CurrentisLocked        : Boolean;
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
  sKey :String;
  dateStart
  , dateEnd: TDate;
  isLocked: Boolean;

begin

  sKey := trim(cxButtonEditGUID.Text);
  dateStart := dateEditStart.Date;
  dateEnd := dateEditEnd.Date;
  isLocked := checkBoxLocked.Checked;

  if (sKey <> '')
    and (fOrganizationId <> -1)
    and not VarIsNull(dateStart)
    and not VarIsNull(dateEnd) then
  begin
      if fMode = mode_append then
      begin
        dm.appendKey(fOrganizationId, sKey, dateStart, dateEnd, isLocked);
        modalResult := mrOK;
        dm.qKeys.Refresh;
      end else
      begin
       {dm.editOrganization(sname, fOrganizationId);
        modalResult := mrOK;
        dm.qOrganizations.Refresh; }
      end
  end else
  begin
    ModalResult := mrNone;
    MessageDlg('Заполните корректно поля', mtInformation,[mbOK], 0);
  end;
end;

procedure TfrmEditKey.cxButtonEditGUIDPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  cxButtonEditGUID.Text := CreateGuid;
end;

procedure TfrmEditKey.cxLookUpComboBoxOrgPropertiesCloseUp(Sender: TObject);
begin
  fOrganizationId := cxLookUpComboBoxOrg.EditValue;
  statusBarX.Panels[1].Text := intToStr(fOrganizationId);
end;

procedure TfrmEditKey.doFormShow;
begin



  dm.openOrganizationList;
 // dm.openOrganizationKeys;
  if fMode = mode_edit then
  begin
    fOrganizationId := -1;
    dateEditStart.Date := Now;
    dateEditEnd.Date := IncMonth(Now, 12);
  end else
  begin
    fOrganizationId := fCurrentOrganizationId;
    dateEditStart.Date := fCurrentDateStart;
    dateEditEnd.Date := fCurrentDateEnd;
    checkBoxLocked.Checked := fCurrentisLocked;
  end;

end;

end.

