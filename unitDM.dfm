object DM: TDM
  OldCreateOrder = False
  Height = 303
  Width = 399
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'clinica.paciente'
    Left = 24
    Top = 80
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbPacientecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1; '
      Size = 14
    end
    object tbPacientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(##) # ####-####;1; '
      Size = 16
    end
    object tbPacientedata_cadastro: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'clinica.agendamento'
    Left = 96
    Top = 80
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbAgendamentoid_paciente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
    end
    object tbAgendamentodata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
      EditMask = '##/##/####;1; '
    end
    object tbAgendamentohora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      EditMask = '##:##;1; '
      Size = 5
    end
    object tbAgendamentoespecialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 25
    end
    object tbAgendamentomedico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medico'
      Origin = 'medico'
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 24
    Top = 144
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 96
    Top = 144
  end
end
