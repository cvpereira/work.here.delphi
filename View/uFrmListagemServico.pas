unit uFrmListagemServico;

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
  cxGrid, Servico;

type
  TFrmListagemServico = class(TFrmListagemBase)
    dxEMFDataSetListagemProdutoId: TIntegerField;
    dxEMFDataSetListagemNome: TWideStringField;
    grdListagemDBTableView1ServicoId: TcxGridDBColumn;
    grdListagemDBTableView1Nome: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizarDataSet; override;

  end;

var
  FrmListagemServico: TFrmListagemServico;

implementation

uses
  uDMConexao, uFrmManutencaoServico, uControllerServico;

{$R *.dfm}

{ TFrmListagemProduto }

procedure TFrmListagemServico.AtualizarDataSet;
begin
  inherited;
  dxEMFDataSetListagem.Close;
  dxEMFDataSetListagem.AssignData<TServico>(DMConexao.dxEMFSession.GetObjects<TServico>);
  dxEMFDataSetListagem.Open;
end;

procedure TFrmListagemServico.FormCreate(Sender: TObject);
begin
  inherited;
  FormClassManutencao := TFrmManutencaoServico;
  Controller          := TControllerServico.Create;
end;

end.
