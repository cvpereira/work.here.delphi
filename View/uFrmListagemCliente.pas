unit uFrmListagemCliente;

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
  dxEMF.DataSet, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Cliente, Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxMaskEdit, System.Actions, Vcl.ActnList;

type
  TFrmListagemCliente = class(TFrmListagemBase)
    dxEMFDataSetListagemClienteId: TIntegerField;
    dxEMFDataSetListagemCidade: TIntegerField;
    dxEMFDataSetListagemEstado: TIntegerField;
    grdListagemDBTableView1ClienteId: TcxGridDBColumn;
    grdListagemDBTableView1Nome: TcxGridDBColumn;
    grdListagemDBTableView1Telefone: TcxGridDBColumn;
    grdListagemDBTableView1Cidade: TcxGridDBColumn;
    grdListagemDBTableView1Estado: TcxGridDBColumn;
    dxEMFDataSetListagemNome: TWideStringField;
    dxEMFDataSetListagemTelefone: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizarDataSet; override;

  end;

var
  FrmListagemCliente: TFrmListagemCliente;

implementation

uses
  uDMConexao, uFrmManutencaoCliente, uControllerCliente;

{$R *.dfm}

procedure TFrmListagemCliente.AtualizarDataSet;
begin
  inherited;
  dxEMFDataSetListagem.Close;
  dxEMFDataSetListagem.AssignData<TCliente>(DMConexao.dxEMFSession.GetObjects<TCliente>);
  dxEMFDataSetListagem.Open;
end;

procedure TFrmListagemCliente.FormCreate(Sender: TObject);
begin
  inherited;
  FormClassManutencao := TFrmManutencaoCliente;
  Controller          := TControllerCliente.Create;
end;

end.
