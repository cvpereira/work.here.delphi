unit uFrmManutencaoServicoNotaFiscal;

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
  cxDBEdit, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, dxEMF.DataSet;

type
  TFrmManutencaoServicoNotaFiscal = class(TFrmManutencaoBase)
    lblServico: TcxLabel;
    dblkpcmbxServicos: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    dbspnQuantidade: TcxDBSpinEdit;
    cxLabel2: TcxLabel;
    dbedtValorUnitario: TcxDBCurrencyEdit;
    cxLabel3: TcxLabel;
    dbedtValorTotal: TcxDBCurrencyEdit;
    dxEMFDataSetServicos: TdxEMFDataSet;
    dsServicos: TDataSource;
    dxEMFDataSetServicosServicoId: TIntegerField;
    dxEMFDataSetServicosNome: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure dbspnQuantidadePropertiesEditValueChanged(Sender: TObject);
    procedure dbedtValorUnitarioPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Salvar: Boolean; override;

  end;

var
  FrmManutencaoServicoNotaFiscal: TFrmManutencaoServicoNotaFiscal;

implementation

uses
  uDMConexao, Servico;

{$R *.dfm}

procedure TFrmManutencaoServicoNotaFiscal.dbedtValorUnitarioPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Assigned(dbedtValorUnitario.DataBinding.Field) then
  begin
    if dsManutencao.DataSet.State <> dsBrowse then
    begin
      dbedtValorTotal.DataBinding.Field.AsFloat := dbspnQuantidade.DataBinding.Field.AsInteger *
        dbedtValorUnitario.DataBinding.Field.AsFloat;
    end;
  end;
end;

procedure TFrmManutencaoServicoNotaFiscal.dbspnQuantidadePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Assigned(dbspnQuantidade.DataBinding.Field) then
  begin
    if dsManutencao.DataSet.State <> dsBrowse then
    begin
      dbedtValorTotal.DataBinding.Field.AsFloat := dbspnQuantidade.DataBinding.Field.AsInteger *
        dbedtValorUnitario.DataBinding.Field.AsFloat;
    end;
  end;
end;

procedure TFrmManutencaoServicoNotaFiscal.FormShow(Sender: TObject);
begin
  inherited;
  dxEMFDataSetServicos.Close;
  dxEMFDataSetServicos.AssignData<TServico>(DMConexao.dxEMFSession.GetObjects<TServico>);
  dxEMFDataSetServicos.Open;
end;

function TFrmManutencaoServicoNotaFiscal.Salvar: Boolean;
begin
  try
    dsManutencao.DataSet.Post;
    Result := True;
  except
    Result := False;
  end;
end;

end.
