inherited FrmListagemNotaFiscal: TFrmListagemNotaFiscal
  Caption = 'Listagem de Notas Fiscais'
  ClientHeight = 458
  ClientWidth = 652
  FormStyle = fsMDIChild
  OnCreate = FormCreate
  ExplicitWidth = 668
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TcxGrid
    Width = 652
    Height = 398
    ExplicitTop = 2
    ExplicitWidth = 652
    ExplicitHeight = 398
    inherited grdListagemDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsNotasFiscais
      DataController.KeyFieldNames = 'NotaFiscalId'
      object grdListagemDBTableView1RecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object grdListagemDBTableView1NotaFiscalId: TcxGridDBColumn
        DataBinding.FieldName = 'NotaFiscalId'
      end
      object grdListagemDBTableView1NomeCliente: TcxGridDBColumn
        DataBinding.FieldName = 'NomeCliente'
        Width = 382
      end
      object grdListagemDBTableView1Data: TcxGridDBColumn
        DataBinding.FieldName = 'Data'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 83
      end
      object grdListagemDBTableView1ValorTotal: TcxGridDBColumn
        DataBinding.FieldName = 'ValorTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        Width = 100
      end
    end
    object grdListagemDBTableView2: TcxGridDBTableView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsProdutos
      DataController.DetailKeyFieldNames = 'NotaFiscalId'
      DataController.KeyFieldNames = 'NotaFiscalId'
      DataController.MasterKeyFieldNames = 'NotaFiscalId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object grdListagemDBTableView2RecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object grdListagemDBTableView2NotaFiscalId: TcxGridDBColumn
        DataBinding.FieldName = 'NotaFiscalId'
        Visible = False
      end
      object grdListagemDBTableView2ProdutoId: TcxGridDBColumn
        DataBinding.FieldName = 'ProdutoId'
      end
      object grdListagemDBTableView2Nome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 300
      end
      object grdListagemDBTableView2ValorUnitario: TcxGridDBColumn
        DataBinding.FieldName = 'ValorUnitario'
        Width = 82
      end
      object grdListagemDBTableView2Quantidade: TcxGridDBColumn
        DataBinding.FieldName = 'Quantidade'
        Width = 90
      end
      object grdListagemDBTableView2ValorTotal: TcxGridDBColumn
        DataBinding.FieldName = 'ValorTotal'
        Width = 100
      end
    end
    object grdListagemDBTableView3: TcxGridDBTableView [2]
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsServicos
      DataController.DetailKeyFieldNames = 'NotaFiscalId'
      DataController.KeyFieldNames = 'NotaFiscalId'
      DataController.MasterKeyFieldNames = 'NotaFiscalId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object grdListagemDBTableView3RecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object grdListagemDBTableView3NotaFiscalServicoId: TcxGridDBColumn
        DataBinding.FieldName = 'NotaFiscalServicoId'
        Visible = False
      end
      object grdListagemDBTableView3NotaFiscalId: TcxGridDBColumn
        DataBinding.FieldName = 'NotaFiscalId'
        Visible = False
      end
      object grdListagemDBTableView3ServicoId: TcxGridDBColumn
        DataBinding.FieldName = 'ServicoId'
      end
      object grdListagemDBTableView3Nome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 300
      end
      object grdListagemDBTableView3ValorUnitario: TcxGridDBColumn
        DataBinding.FieldName = 'ValorUnitario'
        Width = 82
      end
      object grdListagemDBTableView3Quantidade: TcxGridDBColumn
        DataBinding.FieldName = 'Quantidade'
        Width = 90
      end
      object grdListagemDBTableView3ValorTotal: TcxGridDBColumn
        DataBinding.FieldName = 'ValorTotal'
        Width = 100
      end
    end
    inherited grdListagemLevel1: TcxGridLevel
      object grdListagemLevel2: TcxGridLevel
        Caption = 'Produto'
        GridView = grdListagemDBTableView2
        Options.DetailTabsPosition = dtpTop
        object grdListagemLevel3: TcxGridLevel
          Caption = 'Servi'#231'o'
          GridView = grdListagemDBTableView3
          Options.DetailTabsPosition = dtpTop
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 439
    Width = 652
    ExplicitTop = 439
    ExplicitWidth = 652
  end
  inherited pnlComandos: TPanel
    Top = 398
    Width = 652
    ExplicitTop = 398
    ExplicitWidth = 652
    inherited btnInserir: TcxButton
      Left = 410
      ExplicitLeft = 410
    end
    inherited btnAlterar: TcxButton
      Left = 491
      ExplicitLeft = 491
    end
    inherited btnExcluir: TcxButton
      Left = 572
      ExplicitLeft = 572
    end
  end
  inherited dxEMFDataSetListagem: TdxEMFDataSet
    Top = 96
    object dxEMFDataSetListagemNotaFiscalId: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NotaFiscalId'
    end
    object dxEMFDataSetListagemData: TDateTimeField
      FieldName = 'Data'
    end
    object dxEMFDataSetListagemValorTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
    end
  end
  inherited dsListagem: TDataSource
    Left = 416
    Top = 96
  end
  inherited actLstListagem: TActionList
    Left = 176
    Top = 96
  end
  object mdNotasFiscais: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 416
    Top = 144
    object mdNotasFiscaisNotaFiscalId: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NotaFiscalId'
    end
    object mdNotasFiscaisCodigoCliente: TIntegerField
      FieldName = 'CodigoCliente'
    end
    object mdNotasFiscaisNomeCliente: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'NomeCliente'
      Size = 100
    end
    object mdNotasFiscaisData: TDateField
      FieldName = 'Data'
    end
    object mdNotasFiscaisValorTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
    end
  end
  object dsNotasFiscais: TDataSource
    DataSet = mdNotasFiscais
    Left = 512
    Top = 144
  end
  object mdProdutos: TdxMemData
    Indexes = <
      item
        FieldName = 'NotaFiscalProdutoId'
        SortOptions = []
      end>
    SortOptions = []
    Left = 416
    Top = 192
    object mdProdutosNotaFiscalProdutoId: TIntegerField
      FieldName = 'NotaFiscalProdutoId'
    end
    object mdProdutosNotaFiscalId: TIntegerField
      FieldName = 'NotaFiscalId'
    end
    object mdProdutosProdutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ProdutoId'
    end
    object mdProdutosNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mdProdutosValorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'ValorUnitario'
    end
    object mdProdutosQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object mdProdutosValorTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
    end
  end
  object mdServicos: TdxMemData
    Indexes = <
      item
        FieldName = 'NotaFiscalId'
        SortOptions = []
      end>
    SortOptions = []
    Left = 416
    Top = 240
    object mdServicosNotaFiscalServicoId: TIntegerField
      FieldName = 'NotaFiscalServicoId'
    end
    object mdServicosNotaFiscalId: TIntegerField
      FieldName = 'NotaFiscalId'
    end
    object mdServicosServicoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ServicoId'
    end
    object mdServicosNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object mdServicosValorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'ValorUnitario'
    end
    object mdServicosQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object mdServicosValorTotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
    end
  end
  object dsProdutos: TDataSource
    DataSet = mdProdutos
    Left = 512
    Top = 192
  end
  object dsServicos: TDataSource
    DataSet = mdServicos
    Left = 512
    Top = 240
  end
end
