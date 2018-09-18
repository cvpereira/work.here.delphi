inherited FrmManutencaoCliente: TFrmManutencaoCliente
  Caption = 'Manuten'#231#227'o de Clientes'
  ClientHeight = 163
  ClientWidth = 477
  OnShow = FormShow
  ExplicitWidth = 493
  ExplicitHeight = 202
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 477
    Height = 122
    ExplicitWidth = 477
    ExplicitHeight = 122
    object dbedtNomeCliente: TcxDBTextEdit
      Left = 59
      Top = 10
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = dsManutencao
      Properties.MaxLength = 100
      TabOrder = 0
      Width = 410
    end
    object lblNome: TcxLabel
      Left = 7
      Top = 11
      Caption = 'Nome'
    end
    object lblTelefone: TcxLabel
      Left = 7
      Top = 38
      Caption = 'Telefone'
    end
    object dbedtTelefone: TcxDBMaskEdit
      Left = 59
      Top = 37
      DataBinding.DataField = 'Telefone'
      DataBinding.DataSource = dsManutencao
      Properties.EditMask = '(99)9999-9999;0;_'
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 121
    end
    object lblEstado: TcxLabel
      Left = 7
      Top = 65
      Caption = 'Estado'
    end
    object lblCidade: TcxLabel
      Left = 7
      Top = 92
      Caption = 'Cidade'
    end
    object dblkpcmbxEstado: TcxDBLookupComboBox
      Left = 59
      Top = 64
      DataBinding.DataField = 'Estado'
      DataBinding.DataSource = dsManutencao
      Properties.KeyFieldNames = 'Estado'
      Properties.ListColumns = <
        item
          FieldName = 'Nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstado
      Properties.OnEditValueChanged = dblkpcmbxEstadoPropertiesEditValueChanged
      TabOrder = 6
      Width = 121
    end
    object dblkpcmbxCidade: TcxDBLookupComboBox
      Left = 59
      Top = 91
      DataBinding.DataField = 'Cidade'
      DataBinding.DataSource = dsManutencao
      Properties.KeyFieldNames = 'Cidade'
      Properties.ListColumns = <
        item
          FieldName = 'Nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCidade
      TabOrder = 7
      Width = 238
    end
  end
  inherited pnlComandos: TPanel
    Top = 122
    Width = 477
    ExplicitTop = 122
    ExplicitWidth = 477
    inherited btnSalvar: TcxButton
      Left = 313
      ExplicitLeft = 313
    end
    inherited btnCancelar: TcxButton
      Left = 394
      ExplicitLeft = 394
    end
  end
  inherited actLstManutencao: TActionList
    Left = 280
    Top = 88
  end
  inherited ImgLstManutencao: TcxImageList
    FormatVersion = 1
    DesignInfo = 5767536
  end
  object RESTClientEstado: TRESTClient [4]
    Accept = 'application/json'
    AcceptCharset = 'UTF-8'
    BaseURL = 
      'http://azcloud.brazilsouth.cloudapp.azure.com:29204/countries/55' +
      '/states'
    Params = <>
    HandleRedirects = True
    Left = 80
  end
  object RESTRequestEstado: TRESTRequest [5]
    Client = RESTClientEstado
    Params = <>
    Response = RESTResponseEstado
    SynchronizedEvents = False
    Left = 120
  end
  object RESTResponseEstado: TRESTResponse [6]
    Left = 168
  end
  object RESTResponseDataSetAdapterEstado: TRESTResponseDataSetAdapter [7]
    Dataset = cdsEstadoLookup
    FieldDefs = <>
    ResponseJSON = RESTResponseEstado
    Left = 280
  end
  object cdsEstadoLookup: TClientDataSet [8]
    Aggregates = <>
    Params = <>
    Left = 416
  end
  object dsEstado: TDataSource [9]
    DataSet = cdsEstado
    Left = 72
    Top = 112
  end
  object cdsEstado: TClientDataSet [10]
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 112
    object cdsEstadoEstado: TIntegerField
      FieldName = 'Estado'
    end
    object cdsEstadoNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object RESTClientCidade: TRESTClient
    BaseURL = 
      'http://azcloud.brazilsouth.cloudapp.azure.com:29204/countries/st' +
      'ates'
    Params = <>
    HandleRedirects = True
    Left = 80
    Top = 48
  end
  object RESTRequestCidade: TRESTRequest
    Client = RESTClientCidade
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'IDEstrado'
        Options = [poAutoCreated]
      end>
    Resource = '{IDEstrado}/cities'
    Response = RESTResponseCidade
    SynchronizedEvents = False
    Left = 120
    Top = 48
  end
  object RESTResponseCidade: TRESTResponse
    Left = 168
    Top = 48
  end
  object RESTResponseDataSetAdapterCidade: TRESTResponseDataSetAdapter
    Dataset = cdsCidadeLookup
    FieldDefs = <>
    ResponseJSON = RESTResponseCidade
    Left = 280
    Top = 48
  end
  object cdsCidadeLookup: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 48
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 114
    object cdsCidadeCidade: TIntegerField
      FieldName = 'Cidade'
    end
    object cdsCidadeNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 200
    Top = 112
  end
end
