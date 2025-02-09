program Arrays;

uses
  Vcl.Forms,
  uArrays in 'uArrays.pas' {frmArrays};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmArrays, frmArrays);
  Application.Run;
end.
