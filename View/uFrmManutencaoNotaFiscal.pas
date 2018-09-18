unit uFrmManutencaoNotaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmManutencaoBase, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, Data.DB, System.ImageList,
  Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, dxEMF.DataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxEMF.DB.Criteria, dxEMF.Types,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, cxCurrencyEdit,
  Cliente, NotaFiscal;

type
  TFrmManutencaoNotaFiscal = class(TFrmManutencaoBase)
    lblCliente: TcxLabel;
    dblkpcmbxClientes: TcxDBLookupComboBox;
    dxEMFDataSetClientes: TdxEMFDataSet;
    dsClientes: TDataSource;
    dxEMFDataSetClientesClienteId: TIntegerField;
    dxEMFDataSetClientesNome: TWideStringField;
    grdProdutoDBTableView1: TcxGridDBTableView;
    grdProdutoLevel1: TcxGridLevel;
    grdProduto: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    grdServico: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btnIncluirProduto: TcxButton;
    btnExcluirProduto: TcxButton;
    btnIncluirServico: TcxButton;
    cxButton4: TcxButton;
    mdProduto: TdxMemData;
    dsProduto: TDataSource;
    dsServico: TDataSource;
    actIncluirProduto: TAction;
    actExcluirProduto: TAction;
    actIncluirServico: TAction;
    actExcluirServico: TAction;
    mdProdutoProdutoId: TIntegerField;
    mdProdutoNome: TStringField;
    mdProdutoQuantidade: TIntegerField;
    mdProdutoValorUnitario: TFloatField;
    mdProdutoValorTotal: TFloatField;
    grdProdutoDBTableView1RecId: TcxGridDBColumn;
    grdProdutoDBTableView1ProdutoId: TcxGridDBColumn;
    grdProdutoDBTableView1Nome: TcxGridDBColumn;
    grdProdutoDBTableView1Quantidade: TcxGridDBColumn;
    grdProdutoDBTableView1ValorUnitario: TcxGridDBColumn;
    grdProdutoDBTableView1ValorTotal: TcxGridDBColumn;
    cxGridDBTableView1RecId: TcxGridDBColumn;
    cxGridDBTableView1ServicoId: TcxGridDBColumn;
    cxGridDBTableView1Nome: TcxGridDBColumn;
    cxGridDBTableView1Quantidade: TcxGridDBColumn;
    cxGridDBTableView1ValorUnitario: TcxGridDBColumn;
    cxGridDBTableView1ValorTotal: TcxGridDBColumn;
    mdServico: TdxMemData;
    mdServicoServicoId: TIntegerField;
    mdServicoNome: TStringField;
    mdServicoValorUnitario: TFloatField;
    mdServicoQuantidade: TIntegerField;
    mdServicoValorTotal: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure actIncluirProdutoExecute(Sender: TObject);
    procedure actExcluirProdutoExecute(Sender: TObject);
    procedure actIncluirServicoExecute(Sender: TObject);
    procedure actExcluirServicoExecute(Sender: TObject);

  private
    { Private declarations }
    FCliente: TCliente;
    FNotaFiscal: TNotaFiscal;

  public
    { Public declarations }
    function Salvar: Boolean; override;

  end;

var
  FrmManutencaoNotaFiscal: TFrmManutencaoNotaFiscal;

implementation

uses
  uDMConexao, uFrmManutencaoProdutoNotaFiscal, uFrmManutencaoServicoNotaFiscal, uControllerNotaFiscal,
  Produto, Servico;

{$R *.dfm}

procedure TFrmManutencaoNotaFiscal.actExcluirProdutoExecute(Sender: TObject);
begin
  inherited;
  if not dsProduto.DataSet.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente excluir o registro?', 'Exclusão', MB_ICONQUESTION + MB_YESNOCANCEL) = mrYes then
      dsProduto.DataSet.Delete;
  end;
end;

procedure TFrmManutencaoNotaFiscal.actExcluirServicoExecute(Sender: TObject);
begin
  inherited;
  if not dsServico.DataSet.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente excluir o registro?', 'Exclusão', MB_ICONQUESTION + MB_YESNOCANCEL) = mrYes then
      dsServico.DataSet.Delete;
  end;
end;

procedure TFrmManutencaoNotaFiscal.actIncluirProdutoExecute(Sender: TObject);
begin
  inherited;
  dsProduto.DataSet.Append;
  TFrmManutencaoBase.Editar(dsProduto.DataSet, nil, TFrmManutencaoProdutoNotaFiscal);
end;

procedure TFrmManutencaoNotaFiscal.actIncluirServicoExecute(Sender: TObject);
begin
  inherited;
  dsServico.DataSet.Append;
  TFrmManutencaoBase.Editar(dsServico.DataSet, nil, TFrmManutencaoServicoNotaFiscal);
end;

procedure TFrmManutencaoNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  dxEMFDataSetClientes.Close;
  dxEMFDataSetClientes.AssignData<TCliente>(DMConexao.dxEMFSession.GetObjects<TCliente>);
  dxEMFDataSetClientes.Open;

  mdProduto.Active := True;
  mdServico.Active := True;
  FCliente := TCliente.Create;
  FNotaFiscal := TNotaFiscal.Create;

end;

function TFrmManutencaoNotaFiscal.Salvar: Boolean;
var
  ANotaFiscalProduto: TNotaFiscalProduto;
  ANotaFiscalServico: TNotaFiscalServico;
  TotalProdutos, TotalServicos: Double;
  AProduto: TProduto;
  AServico: TServico;
begin
  TotalProdutos := 0;
  TotalServicos := 0;
  FCliente := DMConexao.dxEMFSession.Find<TCliente>(dblkpcmbxClientes.DataBinding.Field.AsInteger);

  if not Assigned(Controller) then
    Controller := TControllerNotaFiscal.Create;

  try
    FNotaFiscal.Data    := Now;
    FNotaFiscal.Cliente := FCliente;

    dsProduto.DataSet.First;

    while not dsProduto.DataSet.Eof do
    begin
      AProduto := DMConexao.dxEMFSession.Find<TProduto>(dsProduto.DataSet.FieldByName('ProdutoId').AsInteger);
      ANotaFiscalProduto := TNotaFiscalProduto.Create;
      ANotaFiscalProduto.ValorUnitario := dsProduto.DataSet.FieldByName('ValorUnitario').AsFloat;
      ANotaFiscalProduto.Quantidade    := dsProduto.DataSet.FieldByName('Quantidade').AsInteger;
      ANotaFiscalProduto.ValorTotal    := dsProduto.DataSet.FieldByName('ValorTotal').AsFloat;
      ANotaFiscalProduto.Produto       := AProduto;
      FNotaFiscal.Produtos.Add(ANotaFiscalProduto);
      TotalProdutos := TotalProdutos + ANotaFiscalProduto.ValorTotal;
      dsProduto.DataSet.Next;
    end;

    dsServico.DataSet.First;

    while not dsServico.DataSet.Eof do
    begin
      AServico := DMConexao.dxEMFSession.Find<TServico>(dsServico.DataSet.FieldByName('ServicoId').AsInteger);
      ANotaFiscalServico := TNotaFiscalServico.Create;
      ANotaFiscalServico.ValorUnitario := dsServico.DataSet.FieldByName('ValorUnitario').AsFloat;
      ANotaFiscalServico.Quantidade    := dsServico.DataSet.FieldByName('Quantidade').AsInteger;
      ANotaFiscalServico.ValorTotal    := dsServico.DataSet.FieldByName('ValorTotal').AsFloat;
      ANotaFiscalServico.Servico       := AServico;
      FNotaFiscal.Servicos.Add(ANotaFiscalServico);
      TotalServicos := TotalServicos + ANotaFiscalServico.ValorTotal;
      dsServico.DataSet.Next;
    end;

    FNotaFiscal.ValorTotal := TotalProdutos + TotalServicos;
    Result := Controller.Salvar(FNotaFiscal);
  except
    Result := False;
  end;
end;

end.
