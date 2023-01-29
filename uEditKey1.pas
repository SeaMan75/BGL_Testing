unit uEditKey1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxMaskEdit, cxCalendar;

type
  TfrmEditKey1 = class(TForm)
    cxLabel1: TcxLabel;
    cxButtonOk: TcxButton;
    cxButton2: TcxButton;
    textEditKey: TcxTextEdit;
    cxLabel2: TcxLabel;
    labelDate1: TcxLabel;
    labelDate2: TcxLabel;
    dateEditStart: TcxDateEdit;
    dateEditEnd: TcxDateEdit;
    checkBoxLocked: TcxCheckBox;
    lookupOrganization: TcxDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditKey1: TfrmEditKey1;

implementation

{$R *.dfm}

end.
