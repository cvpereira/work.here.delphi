object FrmListagemBase: TFrmListagemBase
  Left = 0
  Top = 0
  Caption = 'Listagem'
  ClientHeight = 427
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdListagem: TcxGrid
    Left = 0
    Top = 0
    Width = 641
    Height = 367
    Align = alClient
    TabOrder = 0
    object grdListagemDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsListagem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
    end
    object grdListagemLevel1: TcxGridLevel
      GridView = grdListagemDBTableView1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 408
    Width = 641
    Height = 19
    Panels = <>
  end
  object pnlComandos: TPanel
    Left = 0
    Top = 367
    Width = 641
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      641
      41)
    object btnInserir: TcxButton
      Left = 399
      Top = 8
      Width = 75
      Height = 25
      Action = actIncluir
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object btnAlterar: TcxButton
      Left = 480
      Top = 8
      Width = 75
      Height = 25
      Action = actAlterar
      Anchors = [akTop, akRight]
      TabOrder = 1
    end
    object btnExcluir: TcxButton
      Left = 561
      Top = 8
      Width = 75
      Height = 25
      Action = actExcluir
      Anchors = [akTop, akRight]
      TabOrder = 2
    end
  end
  object dxEMFDataSetListagem: TdxEMFDataSet
    Left = 296
    Top = 120
  end
  object dsListagem: TDataSource
    DataSet = dxEMFDataSetListagem
    Left = 456
    Top = 120
  end
  object actLstListagem: TActionList
    Left = 120
    Top = 144
    object actIncluir: TAction
      Caption = 'Incluir'
      OnExecute = actIncluirExecute
    end
    object actAlterar: TAction
      Caption = 'Alterar'
      OnExecute = actAlterarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      OnExecute = actExcluirExecute
    end
  end
end
