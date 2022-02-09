unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses delphi_rounded_corners;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, c, d: dword;
  mn: dword;
  sSer: string;
begin
  mn := $C3BC;
  a := 82158;
  b := 45831;
  c := (a + mn) mod $1869F;
  d := (b + mn) mod $1869F;
  sSer := inttostr(a).PadLeft(5, '0') + '-';
  sSer := sSer + inttostr(b).PadLeft(5, '0') + '-';
  sSer := sSer + inttostr($555A).PadLeft(5, '0') + '-';
  sSer := sSer + inttostr(d).PadLeft(5, '0') + '-';
  sSer := sSer + inttostr(c).PadLeft(5, '0') + '-';
  sSer := sSer + '02014';
  Memo1.Lines.Add(sSer);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
SetRoundedCorners(Self.Handle,TRoundedWindowCornerType.RoundedCornerOn);
end;

end.
