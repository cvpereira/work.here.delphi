unit uFrmListagemBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxEMF.DataSet, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  uControllerAbstract, uFrmManutencaoBase;

type
  TFrmListagemBase = class(TForm)
    grdListagemDBTableView1: TcxGridDBTableView;
    grdListagemLevel1: TcxGridLevel;
    grdListagem: TcxGrid;
    dxEMFDataSetListagem: TdxEMFDataSet;
    dsListagem: TDataSource;
    StatusBar1: TStatusBar;
    pnlComandos: TPanel;
    btnInserir: TcxButton;
    btnAlterar: TcxButton;
    btnExcluir: TcxButton;
    actLstListagem: TActionList;
    actIncluir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    FFormClassManutencao: TComponentClass;
    FController: TControllerAbstract;

  public
    { Public declarations }
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    procedure AtualizarDataSet; virtual; abstract;
    property FormClassManutencao: TComponentClass read FFormClassManutencao write FFormClassManutencao;
    property Controller: TControllerAbstract read FController write FController;

  end;

var
  FrmListagemBase: TFrmListagemBase;

implementation

{$R *.dfm}

procedure TFrmListagemBase.actAlterarExecute(Sender: TObject);
begin
  TFrmManutencaoBase.Editar(dsListagem.DataSet, Controller, FormClassManutencao);
  AtualizarDataSet;
end;

procedure TFrmListagemBase.actExcluirExecute(Sender: TObject);
begin
  if not dsListagem.DataSet.IsEmpty then
  begin
    if Application.MessageBox('Deseja realmente excluir o registro?', 'Exclusão', MB_ICONQUESTION + MB_YESNOCANCEL) = mrYes then
      Controller.Excluir(TdxEMFDataSet(dsListagem.DataSet));
  end;

  AtualizarDataSet;
end;

procedure TFrmListagemBase.actIncluirExecute(Sender: TObject);
begin
  dsListagem.DataSet.Append;
  TFrmManutencaoBase.Editar(dsListagem.DataSet, Controller, FormClassManutencao);
  AtualizarDataSet;
end;

procedure TFrmListagemBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Release;
end;

procedure TFrmListagemBase.FormShow(Sender: TObject);
begin
  AtualizarDataSet;
end;

procedure TFrmListagemBase.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
var
  Rect: TRect;
  OurWidth: Integer;
  OurHeight: Integer;
begin
  if Showing then
  begin
    // Obtem o retângulo da área cliente MDI
    WinApi.Windows.GetWindowRect(Application.MainForm.ClientHandle, Rect);

    // Calcular largura e altura da área cliente
    OurWidth := Rect.Right - Rect.Left;
    OurHeight := Rect.Bottom - Rect.Top;

    // Calcula a nova posição
    ALeft := (OurWidth - Width) div 2;
    ATop := (OurHeight - Height) div 2;
  end;

  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
end;

end.
