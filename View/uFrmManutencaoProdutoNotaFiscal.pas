unit uFrmManutencaoProdutoNotaFiscal;

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
  cxButtons, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxCurrencyEdit,
  cxDBEdit, cxSpinEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxEMF.DataSet;

type
  TFrmManutencaoProdutoNotaFiscal = class(TFrmManutencaoBase)
    dblkpcmbxProduto: TcxDBLookupComboBox;
    lblProduto: TcxLabel;
    lblQuantidade: TcxLabel;
    dbspnQuantidade: TcxDBSpinEdit;
    lblValorUnitario: TcxLabel;
    dbedtValorUnitario: TcxDBCurrencyEdit;
    lblValorTotal: TcxLabel;
    dbedtValorTotal: TcxDBCurrencyEdit;
    dxEMFDataSetProdutos: TdxEMFDataSet;
    dsProdutos: TDataSource;
    dxEMFDataSetProdutosProdutoId: TIntegerField;
    dxEMFDataSetProdutosNome: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure dbedtValorUnitarioPropertiesEditValueChanged(Sender: TObject);
    procedure dbspnQuantidadePropertiesEditValueChanged(Sender: TObject);
    procedure dblkpcmbxProdutoPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Salvar: Boolean; override;

  end;

var
  FrmManutencaoProdutoNotaFiscal: TFrmManutencaoProdutoNotaFiscal;

implementation

uses
  uDMConexao, Produto;

{$R *.dfm}

procedure TFrmManutencaoProdutoNotaFiscal.dbedtValorUnitarioPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dsManutencao.DataSet.State <> dsBrowse then
  begin
    dbedtValorTotal.DataBinding.Field.AsFloat := dbspnQuantidade.DataBinding.Field.AsInteger *
      dbedtValorUnitario.DataBinding.Field.AsFloat;
  end;
end;

procedure TFrmManutencaoProdutoNotaFiscal.dblkpcmbxProdutoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dsManutencao.DataSet.State <> dsBrowse then
    dsManutencao.DataSet.FieldByName('Nome').AsString := dblkpcmbxProduto.Properties.ListSource.DataSet.FieldByName('Nome').AsString;
end;

procedure TFrmManutencaoProdutoNotaFiscal.dbspnQuantidadePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dsManutencao.DataSet.State <> dsBrowse then
  begin
    dbedtValorTotal.DataBinding.Field.AsFloat := dbspnQuantidade.DataBinding.Field.AsInteger *
      dbedtValorUnitario.DataBinding.Field.AsFloat;
  end;
end;

procedure TFrmManutencaoProdutoNotaFiscal.FormShow(Sender: TObject);
begin
  inherited;
  dxEMFDataSetProdutos.Close;
  dxEMFDataSetProdutos.AssignData<TProduto>(DMConexao.dxEMFSession.GetObjects<TProduto>);
  dxEMFDataSetProdutos.Open;
end;

function TFrmManutencaoProdutoNotaFiscal.Salvar: Boolean;
begin
  try
    dsManutencao.DataSet.Post;
    Result := True;
  except
    Result := False;
  end;
end;

end.
