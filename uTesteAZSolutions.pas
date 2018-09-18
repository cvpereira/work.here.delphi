unit uTesteAZSolutions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxRibbonCustomizationForm,
  dxStatusBar, dxRibbonStatusBar, dxBarApplicationMenu, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList;

type
  TFrmTesteAZSolutions = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager1Bar2: TdxBar;
    dxBtnClientes: TdxBarLargeButton;
    ActionLstPrincipal: TActionList;
    actClientes: TAction;
    cxImgLstPrincipal: TcxImageList;
    btnProduto: TdxBarLargeButton;
    actProduto: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    actServico: TAction;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    actNotaFiscal: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure actClientesExecute(Sender: TObject);
    procedure actProdutoExecute(Sender: TObject);
    procedure actServicoExecute(Sender: TObject);
    procedure actNotaFiscalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTesteAZSolutions: TFrmTesteAZSolutions;

implementation

uses
  uFrmListagemCliente, uFrmListagemProduto, uFrmListagemServico, uFrmListagemNotaFiscal;

{$R *.dfm}

procedure TFrmTesteAZSolutions.actClientesExecute(Sender: TObject);
begin
  FrmListagemCliente := TFrmListagemCliente.Create(Self);
  FrmListagemCliente.Show;
end;

procedure TFrmTesteAZSolutions.actNotaFiscalExecute(Sender: TObject);
begin
  FrmListagemNotaFiscal := TFrmListagemNotaFiscal.Create(Self);
  FrmListagemNotaFiscal.Show;
end;

procedure TFrmTesteAZSolutions.actProdutoExecute(Sender: TObject);
begin
  FrmListagemProduto := TFrmListagemProduto.Create(Self);
  FrmListagemProduto.Show;
end;

procedure TFrmTesteAZSolutions.actServicoExecute(Sender: TObject);
begin
  FrmListagemServico := TFrmListagemServico.Create(Self);
  FrmListagemServico.Show;
end;

end.
