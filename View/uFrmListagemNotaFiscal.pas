unit uFrmListagemNotaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmListagemBase, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  Vcl.Menus, System.Actions, Vcl.ActnList, dxEMF.DataSet, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, cxCalendar, dxmdaset, dxEMF.Types;

type
  TFrmListagemNotaFiscal = class(TFrmListagemBase)
    dxEMFDataSetListagemNotaFiscalId: TIntegerField;
    dxEMFDataSetListagemValorTotal: TFloatField;
    dxEMFDataSetListagemData: TDateTimeField;
    mdNotasFiscais: TdxMemData;
    mdNotasFiscaisNotaFiscalId: TIntegerField;
    mdNotasFiscaisNomeCliente: TStringField;
    mdNotasFiscaisData: TDateField;
    mdNotasFiscaisValorTotal: TFloatField;
    dsNotasFiscais: TDataSource;
    grdListagemDBTableView1RecId: TcxGridDBColumn;
    grdListagemDBTableView1NotaFiscalId: TcxGridDBColumn;
    grdListagemDBTableView1NomeCliente: TcxGridDBColumn;
    grdListagemDBTableView1Data: TcxGridDBColumn;
    grdListagemDBTableView1ValorTotal: TcxGridDBColumn;
    mdNotasFiscaisCodigoCliente: TIntegerField;
    mdProdutos: TdxMemData;
    mdServicos: TdxMemData;
    dsProdutos: TDataSource;
    dsServicos: TDataSource;
    grdListagemLevel2: TcxGridLevel;
    grdListagemLevel3: TcxGridLevel;
    grdListagemDBTableView2: TcxGridDBTableView;
    grdListagemDBTableView3: TcxGridDBTableView;
    mdProdutosNome: TStringField;
    mdProdutosValorUnitario: TFloatField;
    mdProdutosQuantidade: TFloatField;
    mdProdutosValorTotal: TFloatField;
    mdServicosNome: TStringField;
    mdServicosValorUnitario: TFloatField;
    mdServicosQuantidade: TFloatField;
    mdServicosValorTotal: TFloatField;
    mdProdutosNotaFiscalId: TIntegerField;
    mdServicosNotaFiscalId: TIntegerField;
    mdProdutosProdutoId: TIntegerField;
    mdServicosServicoId: TIntegerField;
    grdListagemDBTableView2RecId: TcxGridDBColumn;
    grdListagemDBTableView2NotaFiscalId: TcxGridDBColumn;
    grdListagemDBTableView2ProdutoId: TcxGridDBColumn;
    grdListagemDBTableView2Nome: TcxGridDBColumn;
    grdListagemDBTableView2ValorUnitario: TcxGridDBColumn;
    grdListagemDBTableView2Quantidade: TcxGridDBColumn;
    grdListagemDBTableView2ValorTotal: TcxGridDBColumn;
    grdListagemDBTableView3RecId: TcxGridDBColumn;
    grdListagemDBTableView3NotaFiscalId: TcxGridDBColumn;
    grdListagemDBTableView3ServicoId: TcxGridDBColumn;
    grdListagemDBTableView3Nome: TcxGridDBColumn;
    grdListagemDBTableView3ValorUnitario: TcxGridDBColumn;
    grdListagemDBTableView3Quantidade: TcxGridDBColumn;
    grdListagemDBTableView3ValorTotal: TcxGridDBColumn;
    procedure actIncluirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizarDataSet; override;

  end;

var
  FrmListagemNotaFiscal: TFrmListagemNotaFiscal;

implementation

uses
  NotaFiscal, uDMConexao, uFrmManutencaoNotaFiscal, uFrmManutencaoBase, uControllerNotaFiscal;

{$R *.dfm}

{ TFrmListagemNotaFiscal }

procedure TFrmListagemNotaFiscal.actIncluirExecute(Sender: TObject);
begin
//  inherited;
  dsNotasFiscais.DataSet.Append;
  TFrmManutencaoBase.Editar(dsNotasFiscais.DataSet, Controller, FormClassManutencao);
  AtualizarDataSet;
end;

procedure TFrmListagemNotaFiscal.AtualizarDataSet;
var
  ANotasFiscais: IdxEMFCollection<TNotaFiscal>;
  ANotaFiscal: TNotaFiscal;
  i: Integer;
begin
  inherited;
  ANotasFiscais := DMConexao.dxEMFSession.GetObjects<TNotaFiscal>;

  for ANotaFiscal in ANotasFiscais do
  begin
    mdNotasFiscais.Append;
    mdNotasFiscaisNotaFiscalId.AsInteger := ANotaFiscal.NotaFiscalId;
    mdNotasFiscaisNomeCliente.AsString   := ANotaFiscal.Cliente.Nome;
    mdNotasFiscaisData.AsDateTime        := ANotaFiscal.Data;
    mdNotasFiscaisValorTotal.AsFloat     := ANotaFiscal.ValorTotal;
    mdNotasFiscais.Post;

    for i := 0 to ANotaFiscal.Produtos.Count - 1 do
    begin
      mdProdutos.Append;
      mdProdutosNotaFiscalId.AsInteger := ANotaFiscal.NotaFiscalId;
      mdProdutosNome.AsString          := ANotaFiscal.Produtos.Items[i].Produto.Nome;
      mdProdutosValorUnitario.AsFloat  := ANotaFiscal.Produtos.Items[i].ValorUnitario;
      mdProdutosQuantidade.AsInteger   := ANotaFiscal.Produtos.Items[i].Quantidade;
      mdProdutosValorTotal.AsFloat     := ANotaFiscal.Produtos.Items[i].ValorTotal;
      mdProdutos.Post;
    end;

    for i := 0 to ANotaFiscal.Servicos.Count - 1 do
    begin
      mdServicos.Append;
      mdServicosNotaFiscalId.AsInteger := ANotaFiscal.NotaFiscalId;
      mdServicosNome.AsString          := ANotaFiscal.Servicos.Items[i].Servico.Nome;
      mdServicosValorUnitario.AsFloat  := ANotaFiscal.Servicos.Items[i].ValorUnitario;
      mdServicosQuantidade.AsInteger   := ANotaFiscal.Servicos.Items[i].Quantidade;
      mdServicosValorTotal.AsFloat     := ANotaFiscal.Servicos.Items[i].ValorTotal;
      mdServicos.Post;
    end;
  end;
end;

procedure TFrmListagemNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  mdNotasFiscais.Active := False;
  mdProdutos.Active     := False;
  mdServicos.Active     := False;
end;

procedure TFrmListagemNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  FormClassManutencao := TFrmManutencaoNotaFiscal;
  Controller          := TControllerNotaFiscal.Create;
  mdNotasFiscais.Active := True;
  mdProdutos.Active     := True;
  mdServicos.Active     := True;
end;

end.
