unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

Const
  STR1 = '';

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton; Shift:
        TShiftState; X, Y: Integer);
  private
    FMessage: string;
    FList : TStringList;
    FMessageHasChanged : boolean;
    procedure DynButtonMethod(Sender: TObject);
    function GetMessage: string;
    procedure SetMessage(const AValue: string);
    { Private declarations }
  public
    property Message: string read GetMessage write SetMessage;
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

Const
  STR2='A';

{$R *.DFM}

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FList.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FList := TStringList.Create;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   ShowMessage(FList.Text);
end;

procedure TForm1.DynButtonMethod(Sender: TObject);
begin
  ShowMessage((Sender as TButton).Caption);
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift:
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

function TForm1.GetMessage: string;
begin
  Result := FMessage;
end;

procedure TForm1.SetMessage(const AValue: string);
begin
  FMessage := AValue;
  FMessageHasChanged := True;
end;

end.
