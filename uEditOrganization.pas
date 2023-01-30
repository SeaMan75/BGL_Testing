unit uEditOrganization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uEditBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel,
  dxStatusBar;

type
  TfrmEditOrganization = class(TfrmEditBase)
    cxLabel1: TcxLabel;
    textEditName: TcxTextEdit;
    procedure textEditNameKeyPress(Sender: TObject; var Key: Char);
  private
    fCurrentName: string;
    {******************************}
    procedure btnOkClick; override;
    procedure doFormShow; override;
    {******************************}
  public
    property currentName: String read fCurrentName write fCurrentName;
  end;

var
  frmEditOrganization: TfrmEditOrganization;

implementation

{$R *.dfm}
uses uDatamodule;

procedure TfrmEditOrganization.btnOkClick;
  var
    sname: String;
begin
  sname := trim(textEditName.Text);
  if sname <> '' then
  begin
      if fMode = mode_append then
      begin
        dm.appendOrganization(sname);
        modalResult := mrOK;
        dm.qOrganizations.Refresh;
      end else
      begin
        dm.editOrganization(sname, fOrganizationId);
        modalResult := mrOK;
        dm.qOrganizations.Refresh;
      end
  end;
end;


procedure TfrmEditOrganization.textEditNameKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #$0d then
    cxButtonOk.Click;
end;

procedure TfrmEditOrganization.doFormShow;
begin
  if fMode = mode_edit then
  begin
    textEditName.Text := fCurrentName;
  end else
  begin
    textEditName.Text := '';
  end;
end;

end.

