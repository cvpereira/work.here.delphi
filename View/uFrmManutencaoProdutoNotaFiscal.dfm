inherited FrmManutencaoProdutoNotaFiscal: TFrmManutencaoProdutoNotaFiscal
  Caption = 'Manuten'#231#227'o de Produtos da Nota Fiscal'
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
    ExplicitTop = 2
    ExplicitWidth = 478
    ExplicitHeight = 126
    object dblkpcmbxProduto: TcxDBLookupComboBox
      Left = 81
      Top = 16
      DataBinding.DataField = 'ProdutoId'
      DataBinding.DataSource = dsManutencao
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ProdutoId'
      Properties.ListColumns = <
        item
          FieldName = 'Nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsProdutos
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = dblkpcmbxProdutoPropertiesEditValueChanged
      TabOrder = 0
      Width = 386
    end
    object lblProduto: TcxLabel
      Left = 7
      Top = 17
      Caption = 'Produto'
    end
    object lblQuantidade: TcxLabel
      Left = 7
      Top = 44
      Caption = 'Quantidade'
    end
    object dbspnQuantidade: TcxDBSpinEdit
      Left = 81
      Top = 43
      DataBinding.DataField = 'Quantidade'
      DataBinding.DataSource = dsManutencao
      Properties.OnEditValueChanged = dbspnQuantidadePropertiesEditValueChanged
      TabOrder = 3
      Width = 80
    end
    object lblValorUnitario: TcxLabel
      Left = 7
      Top = 71
      Caption = 'Valor Unit'#225'rio'
    end
    object dbedtValorUnitario: TcxDBCurrencyEdit
      Left = 81
      Top = 70
      DataBinding.DataField = 'ValorUnitario'
      DataBinding.DataSource = dsManutencao
      Properties.DisplayFormat = ',0.00'
      Properties.OnEditValueChanged = dbedtValorUnitarioPropertiesEditValueChanged
      TabOrder = 5
      Width = 121
    end
    object lblValorTotal: TcxLabel
      Left = 7
      Top = 98
      Caption = 'Valor Total'
    end
    object dbedtValorTotal: TcxDBCurrencyEdit
      Left = 81
      Top = 97
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
    inherited btnSalvar: TcxButton
      Left = 314
    end
    inherited btnCancelar: TcxButton
      Left = 395
    end
  end
  inherited actLstManutencao: TActionList
    Left = 248
    Top = 40
  end
  inherited ImgLstManutencao: TcxImageList
    FormatVersion = 1
    DesignInfo = 2621784
  end
  inherited dsManutencao: TDataSource
    Left = 288
    Top = 88
  end
  object dxEMFDataSetProdutos: TdxEMFDataSet
    Left = 216
    Top = 8
    object dxEMFDataSetProdutosProdutoId: TIntegerField
      FieldName = 'ProdutoId'
    end
    object dxEMFDataSetProdutosNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
  end
  object dsProdutos: TDataSource
    DataSet = dxEMFDataSetProdutos
    Left = 304
    Top = 8
  end
end
