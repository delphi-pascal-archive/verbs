program Verbs;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  Verb in 'Verb.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Verbs';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
