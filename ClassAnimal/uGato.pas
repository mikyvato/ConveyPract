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
    function Hablar: string;
    property Especie: string read FEspecie;
  end;

implementation

constructor TGato.Create;
begin
  inherited;
  FEspecie := 'Felino';
end;

function TGato.Hablar: string;
begin
  Result := 'Mauyar';
end;

end.
