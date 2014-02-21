unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uPerro, uGato;

Const
  STR1 = '';

type
  TFPrincipal = class(TForm)
    Button1: TButton;
    BPerro: TButton;
    BGato: TButton;
    procedure BGatoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BPerroClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton; Shift:
        TShiftState; X, Y: Integer);
  private
    FMessage: string;
    FList : TStringList;
    FMessageHasChanged : boolean;
    FPerro : TPerro;
    FGato : TGato;
    procedure DynButtonMethod(Sender: TObject);
    function GetMessage: string;
    procedure SetMessage(const AValue: string);
    { Private declarations }
  public
    property Message: string read GetMessage write SetMessage;
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;


implementation

Const
  STR2='A';

{$R *.DFM}

procedure TFPrincipal.BGatoClick(Sender: TObject);
begin
  showmessage(FGato.Especie + ' --> ' + FGato.Hablar);
end;

procedure TFPrincipal.FormDestroy(Sender: TObject);
begin
  FList.Free;
  FPerro.Free;
  FGato.Free;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  FList := TStringList.Create;
  FPerro := TPerro.Create;
  FGato := TGato.Create;
end;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
   ShowMessage(FList.Text);
end;

procedure TFPrincipal.BPerroClick(Sender: TObject);
begin
   Showmessage(FPerro.Especie + ' ' + FPerro.Hablar);
end;

procedure TFPrincipal.DynButtonMethod(Sender: TObject);
begin
  ShowMessage((Sender as TButton).Caption);
end;

procedure TFPrincipal.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift:
    TShiftState; X, Y: Integer);
var
  Btn: TButton;
begin
  Btn := TButton.Create (Self) ;
  Btn.Parent := Self;
  Btn.Left := X;
  Btn.Top := Y;
  Btn.Width := Btn.Width + 50;
  Btn.Caption := Format ('Boton en %d, %d', [X, Y]);
  Btn.OnClick := DynButtonMethod;
end;

function TFPrincipal.GetMessage: string;
begin
  Result := FMessage;
end;

procedure TFPrincipal.SetMessage(const AValue: string);
begin
  FMessage := AValue;
  FMessageHasChanged := True;
end;

end.
