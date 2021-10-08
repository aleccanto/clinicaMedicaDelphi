unit unitCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadPaciente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dbId: TDBEdit;
    dbNomeCompleto: TDBEdit;
    dbCelular: TDBEdit;
    dbCPF: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbDataCadastro: TDBText;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    txtBusca: TEdit;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadPaciente: TformCadPaciente;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadPaciente.txtBuscaChange(Sender: TObject);
begin
  DM.tbPaciente.Locate('nome', txtBusca.Text, [loPartialKey]);
end;

end.
