unit uEditOrganization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxLabel;

type

  TformMode = (mode_edit, mode_append);
  TfrmEditOrganizatins = class(TForm)
    cxLabel1: TcxLabel;
    cxeditName: TcxTextEdit;
    cxButtonOk: TcxButton;
    cxButton2: TcxButton;
    cxTextEditOldName: TcxTextEdit;
    procedure cxButtonOkClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxeditNameKeyPress(Sender: TObject; var Key: Char);
  private
    fMode : TformMode;
    fId: Integer;
    fOldName : String;
  public
    property formMode: TformMode read fMode write fMode;
    property ID: integer read fId write fId;
    property oldName: String read fOldName write fOldName;
  end;

var
  frmEditOrganizatins: TfrmEditOrganizatins;

implementation

{$R *.dfm}

uses uDatamodule;

procedure TfrmEditOrganizatins.cxButtonOkClick(Sender: TObject);
var
  sname: String;
begin
  sname := trim(cxeditName.Text);
  if sname <> '' then
  begin
      if fMode = mode_append then
      begin
        dm.appendOrganization(sname);
        modalResult := mrOK;
        dm.qOrganizations.Refresh;
      end else
      begin
        dm.editOrganization(sname, fId);
        modalResult := mrOK;
        dm.qOrganizations.Refresh;
      end;
  end;
end;

procedure TfrmEditOrganizatins.cxeditNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #$0d then
    cxButtonOk.Click;
end;

procedure TfrmEditOrganizatins.cxButton2Click(Sender: TObject);
begin
  modalResult := mrCancel;
end;

procedure TfrmEditOrganizatins.FormShow(Sender: TObject);
begin
  if fMode = mode_edit then
  begin
    cxTextEditOldName.show;
    cxTextEditOldName.Text := fOldName;
  end else
  begin
    cxTextEditOldName.Hide;
  end;

end;

end.
