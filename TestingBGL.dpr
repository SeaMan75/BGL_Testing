program TestingBGL;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uDatamodule in 'uDatamodule.pas' {Dm: TDataModule},
  uEditKey in 'uEditKey.pas' {frmEditKey},
  uEditBase in 'uEditBase.pas' {frmEditBase},
  uEditOrganization in 'uEditOrganization.pas' {frmEditOrganization},
  uUtilities in 'uUtilities.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmEditBase, frmEditBase);
  Application.CreateForm(TfrmEditBase, frmEditBase);
  Application.CreateForm(TfrmEditOrganization, frmEditOrganization);
  Application.Run;
end.
