unit uPerro;

interface

uses
  uAnimal;

type
  TPerro = class(TAnimal)
  private
    FEspecie: string;
  public
    constructor Create; override;
    function Hablar: string; override;
    property Especie: string read FEspecie;
  end;

implementation

constructor TPerro.Create;
begin
  inherited;
  FEspecie := 'Canino';
end;

function TPerro.Hablar: string;
begin
  Result := 'Ladra';
end;


end.
