inherited FrmListagemCliente: TFrmListagemCliente
  Caption = 'Listagem de Clientes'
  FormStyle = fsMDIChild
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TcxGrid
    inherited grdListagemDBTableView1: TcxGridDBTableView
      object grdListagemDBTableView1ClienteId: TcxGridDBColumn
        DataBinding.FieldName = 'ClienteId'
      end
      object grdListagemDBTableView1Nome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 325
      end
      object grdListagemDBTableView1Telefone: TcxGridDBColumn
        DataBinding.FieldName = 'Telefone'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '(99)9999-9999;1;_'
        Width = 104
      end
      object grdListagemDBTableView1Cidade: TcxGridDBColumn
        DataBinding.FieldName = 'Cidade'
      end
      object grdListagemDBTableView1Estado: TcxGridDBColumn
        DataBinding.FieldName = 'Estado'
      end
    end
  end
  inherited dxEMFDataSetListagem: TdxEMFDataSet
    object dxEMFDataSetListagemClienteId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ClienteId'
    end
    object dxEMFDataSetListagemNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object dxEMFDataSetListagemTelefone: TWideStringField
      FieldName = 'Telefone'
      Size = 11
    end
    object dxEMFDataSetListagemCidade: TIntegerField
      FieldName = 'Cidade'
    end
    object dxEMFDataSetListagemEstado: TIntegerField
      FieldName = 'Estado'
    end
  end
end
