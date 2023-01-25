program TestingBGL;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uDatamodule in 'uDatamodule.pas' {Dm: TDataModule},
  uEditOrganization in 'uEditOrganization.pas' {frmEditOrganizatins};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
