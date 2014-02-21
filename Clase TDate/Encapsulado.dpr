program Encapsulado;

uses
  Forms,
  UDate in 'UDate.pas' {FPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
