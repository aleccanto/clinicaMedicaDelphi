program SistemaClinica;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadPaciente in 'unitCadPaciente.pas' {formCadPaciente},
  unitCadAgendamentos in 'unitCadAgendamentos.pas' {formCadAgendamento},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPaciente, formCadPaciente);
  Application.CreateForm(TformCadAgendamento, formCadAgendamento);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
