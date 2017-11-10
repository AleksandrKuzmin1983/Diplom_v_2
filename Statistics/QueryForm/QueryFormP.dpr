program QueryFormP;

uses
  Forms,
  QueryFormUnit in 'QueryFormUnit.pas' {QueryForm},
  QueryFormUnit2 in 'QueryFormUnit2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TQueryForm, QueryForm);
  Application.Run;
end.
