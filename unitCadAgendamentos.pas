unit unitCadAgendamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadAgendamento = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    ID: TLabel;
    Paciente: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadAgendamento: TformCadAgendamento;

implementation

{$R *.dfm}

uses unitCadPaciente, unitDM;

end.
