unit uEditBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, cxControls, dxStatusBar;

type
  TformMode = (mode_edit, mode_append);
  TfrmEditBase = class(TForm)
    cxButtonOk: TcxButton;
    cxButton2: TcxButton;
    statusBarX: TdxStatusBar;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButtonOkClick(Sender: TObject);
  protected
    fMode : TformMode;
    fId: Integer;
    procedure btnOkClick; virtual; abstract;
    procedure doFormShow; virtual; abstract;
  private

    { Private declarations }
  public
    property formMode: TformMode read fMode write fMode;
    property ID: integer read fId write fId;

  end;

var
  frmEditBase: TfrmEditBase;

implementation
{$R *.dfm}

procedure TfrmEditBase.cxButton2Click(Sender: TObject);
begin
  modalResult := mrCancel;
end;

procedure TfrmEditBase.cxButtonOkClick(Sender: TObject);
begin
  btnOkClick;
  ModalResult := mrOk;
end;

procedure TfrmEditBase.FormShow(Sender: TObject);
begin
  doFormShow;
end;

end.
