unit SomaNumbers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    Button1: TButton;
    EditBox: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.Moto360.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm1.Button1Click(Sender: TObject);
var
valor, n1, n2 : double;

begin
n1 := EditBox.Text.ToDouble();
n2 := Edit1.Text.ToDouble();
valor := n1 + n2;

Showmessage('O valor da soma é: ' + valor.ToString());
EditBox.Text := '';
Edit1.Text := '';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if Edit1.Text = '' then
Label2.Visible := true
else
Label2.Visible := false;
if EditBox.Text = '' then
Label1.Visible := true
else
Label1.Visible := false;
end;
end.
