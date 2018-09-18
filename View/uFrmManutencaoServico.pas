unit uFrmManutencaoServico;

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
  cxDBEdit, cxLabel;

type
  TFrmManutencaoServico = class(TFrmManutencaoBase)
    lblCodigo: TcxLabel;
    lblNome: TcxLabel;
    dbedtNome: TcxDBTextEdit;
    dbedtCodigo: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManutencaoServico: TFrmManutencaoServico;

implementation

{$R *.dfm}

end.
