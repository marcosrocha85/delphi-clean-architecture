program CleanArchitectureDelphi;

uses
  Forms,
  UMain in 'Presentation\Features\Main\UMain.pas' {fMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
