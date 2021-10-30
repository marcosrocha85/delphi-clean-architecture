program CleanArchitectureDelphi;

uses
  Forms,
  UMain in 'Presentation\Features\Main\UMain.pas' {fMain},
  UMainIntf in 'Presentation\Features\Main\UMainIntf.pas',
  UMapper in 'Core\Mappers\UMapper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
