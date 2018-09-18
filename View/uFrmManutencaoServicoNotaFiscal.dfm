inherited FrmManutencaoServicoNotaFiscal: TFrmManutencaoServicoNotaFiscal
  Caption = 'Manuten'#231#227'o de Servi'#231'os da Nota Fiscal'
  ClientHeight = 167
  ClientWidth = 478
  OnShow = FormShow
  ExplicitWidth = 494
  ExplicitHeight = 206
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 478
    Height = 126
    ExplicitWidth = 478
    ExplicitHeight = 126
    object lblServico: TcxLabel
      Left = 8
      Top = 16
      Caption = 'Servi'#231'o'
    end
    object dblkpcmbxServicos: TcxDBLookupComboBox
      Left = 82
      Top = 15
      DataBinding.DataField = 'ServicoId'
      DataBinding.DataSource = dsManutencao
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ServicoId'
      Properties.ListColumns = <
        item
          FieldName = 'Nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsServicos
      Properties.PostPopupValueOnTab = True
      TabOrder = 1
      Width = 388
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 43
      Caption = 'Quantidade'
    end
    object dbspnQuantidade: TcxDBSpinEdit
      Left = 82
      Top = 42
      DataBinding.DataField = 'Quantidade'
      DataBinding.DataSource = dsManutencao
      Properties.OnEditValueChanged = dbspnQuantidadePropertiesEditValueChanged
      TabOrder = 3
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 70
      Caption = 'Valor Unit'#225'rio'
    end
    object dbedtValorUnitario: TcxDBCurrencyEdit
      Left = 82
      Top = 69
      DataBinding.DataField = 'ValorUnitario'
      DataBinding.DataSource = dsManutencao
      Properties.DisplayFormat = ',0.00'
      Properties.OnEditValueChanged = dbedtValorUnitarioPropertiesEditValueChanged
      TabOrder = 5
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 97
      Caption = 'Valor Total'
    end
    object dbedtValorTotal: TcxDBCurrencyEdit
      Left = 82
      Top = 96
      DataBinding.DataField = 'ValorTotal'
      DataBinding.DataSource = dsManutencao
      Enabled = False
      Properties.DisplayFormat = ',0.00'
      StyleDisabled.TextColor = clWindowText
      TabOrder = 7
      Width = 121
    end
  end
  inherited pnlComandos: TPanel
    Top = 126
    Width = 478
    ExplicitTop = 126
    ExplicitWidth = 478
    inherited btnSalvar: TcxButton
      Left = 314
      ExplicitLeft = 314
    end
    inherited btnCancelar: TcxButton
      Left = 395
      ExplicitLeft = 395
    end
  end
  inherited actLstManutencao: TActionList
    Left = 240
    Top = 72
  end
  inherited ImgLstManutencao: TcxImageList
    FormatVersion = 1
    DesignInfo = 4718928
  end
  inherited dsManutencao: TDataSource
    Left = 424
    Top = 72
  end
  object dxEMFDataSetServicos: TdxEMFDataSet
    Left = 216
    Top = 16
    object dxEMFDataSetServicosServicoId: TIntegerField
      FieldName = 'ServicoId'
    end
    object dxEMFDataSetServicosNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
  end
  object dsServicos: TDataSource
    DataSet = dxEMFDataSetServicos
    Left = 336
    Top = 24
  end
end
