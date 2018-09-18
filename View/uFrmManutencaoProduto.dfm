inherited FrmManutencaoProduto: TFrmManutencaoProduto
  Caption = 'Manuten'#231#227'o de Produtos'
  ClientHeight = 118
  ClientWidth = 430
  ExplicitWidth = 446
  ExplicitHeight = 157
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    Width = 430
    Height = 77
    ExplicitTop = 2
    ExplicitWidth = 456
    ExplicitHeight = 77
    object lblCodigo: TcxLabel
      Left = 10
      Top = 16
      Caption = 'C'#243'digo'
    end
    object lblNome: TcxLabel
      Left = 10
      Top = 47
      Caption = 'Nome'
    end
    object dbedtNome: TcxDBTextEdit
      Left = 53
      Top = 46
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = dsManutencao
      TabOrder = 2
      Width = 364
    end
    object dbedtCodigo: TcxDBTextEdit
      Left = 53
      Top = 15
      DataBinding.DataField = 'ProdutoId'
      DataBinding.DataSource = dsManutencao
      Enabled = False
      StyleDisabled.TextColor = clWindowText
      TabOrder = 3
      Width = 84
    end
  end
  inherited pnlComandos: TPanel
    Top = 77
    Width = 430
    inherited btnSalvar: TcxButton
      Left = 266
    end
    inherited btnCancelar: TcxButton
      Left = 347
    end
  end
  inherited actLstManutencao: TActionList
    Left = 232
    Top = 0
  end
  inherited ImgLstManutencao: TcxImageList
    FormatVersion = 1
    DesignInfo = 320
  end
  inherited dsManutencao: TDataSource
    Left = 400
    Top = 0
  end
end
