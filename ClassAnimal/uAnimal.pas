unit uAnimal;

interface

type
  TAnimal = class(TObject)
  private
//
  protected
    FEspecie: string;
  public
    constructor Create; virtual;
    function Hablar: string; virtual; abstract;
  end;

implementation

constructor TAnimal.Create;
begin
  inherited;
  FEspecie := '';
end;

end.
