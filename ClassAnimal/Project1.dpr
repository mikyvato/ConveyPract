program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FPrincipal},
  uAnimal in 'uAnimal.pas',
  uPerro in 'uPerro.pas',
  uGato in 'uGato.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
