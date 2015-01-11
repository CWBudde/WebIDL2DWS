program WebIDL2DWS;

uses
  Vcl.Forms,
  dwsWebIDLTokenizer in '..\Libraries\dwsWebIDLTokenizer.pas',
  dwsWebIDL in '..\Libraries\dwsWebIDL.pas',
  WebIDL2DWS.Main in 'WebIDL2DWS.Main.pas' {FormWebIDL},
  WebIDL2DWS.SpecifyURL in 'WebIDL2DWS.SpecifyURL.pas' {FormFetchFromWebsite};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormWebIDL, FormWebIDL);
  Application.Run;
end.

