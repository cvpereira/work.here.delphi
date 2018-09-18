unit uFrmListagemProduto;

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
  cxGrid, Produto;

type
  TFrmListagemProduto = class(TFrmListagemBase)
    dxEMFDataSetListagemProdutoId: TIntegerField;
    grdListagemDBTableView1ProdutoId: TcxGridDBColumn;
    grdListagemDBTableView1Nome: TcxGridDBColumn;
    dxEMFDataSetListagemNome: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizarDataSet; override;

  end;

var
  FrmListagemProduto: TFrmListagemProduto;

implementation

uses
  uDMConexao, uFrmManutencaoProduto, uControllerProduto;

{$R *.dfm}

{ TFrmListagemProduto }

procedure TFrmListagemProduto.AtualizarDataSet;
begin
  inherited;
  dxEMFDataSetListagem.Close;
  dxEMFDataSetListagem.AssignData<TProduto>(DMConexao.dxEMFSession.GetObjects<TProduto>);
  dxEMFDataSetListagem.Open;
end;

procedure TFrmListagemProduto.FormCreate(Sender: TObject);
begin
  inherited;
  FormClassManutencao := TFrmManutencaoProduto;
  Controller          := TControllerProduto.Create;
end;

end.
