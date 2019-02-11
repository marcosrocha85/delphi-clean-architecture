program Assis;

uses
  Vcl.Forms,
  UMain in 'Presentation\Features\Main\UMain.pas' {fMain},
  Mapper in 'Core\helpers\Mapper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Assis - Assistance Assistant';
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
