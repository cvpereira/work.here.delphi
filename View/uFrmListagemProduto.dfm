inherited FrmListagemProduto: TFrmListagemProduto
  Caption = 'Listagem de Produtos'
  FormStyle = fsMDIChild
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TcxGrid
    inherited grdListagemDBTableView1: TcxGridDBTableView
      object grdListagemDBTableView1ProdutoId: TcxGridDBColumn
        DataBinding.FieldName = 'ProdutoId'
      end
      object grdListagemDBTableView1Nome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 461
      end
    end
  end
  inherited dxEMFDataSetListagem: TdxEMFDataSet
    object dxEMFDataSetListagemProdutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ProdutoId'
    end
    object dxEMFDataSetListagemNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
  end
end
