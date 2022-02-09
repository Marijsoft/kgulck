program keygenusblock;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  delphi_rounded_corners in 'delphi_rounded_corners.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Manatee Dark');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
