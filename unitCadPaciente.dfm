object formCadPaciente: TformCadPaciente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Paciente'
  ClientHeight = 438
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 101
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 168
    Top = 101
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 32
    Top = 165
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 32
    Top = 230
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 168
    Top = 230
    Width = 85
    Height = 13
    Caption = 'Data do Cadastro'
  end
  object dbDataCadastro: TDBText
    Left = 168
    Top = 252
    Width = 121
    Height = 17
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
  end
  object Label7: TLabel
    Left = 416
    Top = 96
    Width = 72
    Height = 13
    Caption = 'Busca Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 202
      Height = 25
      Caption = 'Cadastro Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 288
      Top = 19
      Width = 470
      Height = 35
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object dbId: TDBEdit
    Left = 32
    Top = 120
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object dbNomeCompleto: TDBEdit
    Left = 32
    Top = 184
    Width = 257
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object dbCelular: TDBEdit
    Left = 32
    Top = 249
    Width = 121
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 16
    TabOrder = 4
  end
  object dbCPF: TDBEdit
    Left = 168
    Top = 120
    Width = 121
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 416
    Top = 152
    Width = 320
    Height = 249
    DataSource = DM.dsPaciente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 416
    Top = 115
    Width = 320
    Height = 21
    TabOrder = 5
    OnChange = txtBuscaChange
  end
end
