unit uGato;

interface

uses
  uAnimal;


type
  TGato = class(TAnimal)
  private
    FEspecie: string;
  public
    constructor Create; override;
  end;

implementation

constructor TGato.Create;
begin
  inherited;
  FEspecie := 'Felino';
end;

end.
