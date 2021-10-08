object formCadAgendamento: TformCadAgendamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 459
  ClientWidth = 734
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
  object ID: TLabel
    Left = 56
    Top = 120
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Paciente: TLabel
    Left = 210
    Top = 120
    Width = 41
    Height = 13
    Caption = 'Paciente'
  end
  object Label4: TLabel
    Left = 56
    Top = 192
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 210
    Top = 192
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 56
    Top = 264
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 210
    Top = 264
    Width = 33
    Height = 13
    Caption = 'M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -40
    ExplicitWidth = 774
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 277
      Height = 25
      Caption = 'Cadastro de Agendamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 352
      Top = 19
      Width = 350
      Height = 35
      DataSource = DM.dsAgendamento
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 139
    Width = 118
    Height = 21
    DataField = 'id'
    DataSource = DM.dsAgendamento
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 211
    Width = 121
    Height = 21
    DataField = 'data'
    DataSource = DM.dsAgendamento
    MaxLength = 10
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 210
    Top = 211
    Width = 121
    Height = 21
    DataField = 'hora'
    DataSource = DM.dsAgendamento
    MaxLength = 5
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 210
    Top = 283
    Width = 121
    Height = 21
    DataField = 'medico'
    DataSource = DM.dsAgendamento
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 210
    Top = 139
    Width = 145
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 56
    Top = 283
    Width = 121
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsAgendamento
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista')
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 400
    Top = 139
    Width = 320
    Height = 278
    DataSource = DM.dsAgendamento
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'HORA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'ESPECIALIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
