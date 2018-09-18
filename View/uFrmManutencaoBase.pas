unit uFrmManutencaoBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList,
  Data.DB, dxEMF.DataSet, uControllerAbstract;

type
  TFrmManutencaoBase = class(TForm)
    pnlPrincipal: TPanel;
    pnlComandos: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    actLstManutencao: TActionList;
    ImgLstManutencao: TcxImageList;
    actSalvar: TAction;
    actCancelar: TAction;
    dsManutencao: TDataSource;
    procedure actCancelarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
    class var FController: TControllerAbstract;

  protected
    FDadosSalvos: Boolean;
    function Salvar: Boolean; virtual;

  public
    { Public declarations }
    class function Editar(ADataSet: TDataSet; AController: TControllerAbstract;
      AClassForm: TComponentClass): Boolean; overload;
    class property Controller: TControllerAbstract read FController write FController;

  end;

var
  FrmManutencaoBase: TFrmManutencaoBase;

implementation

uses
  uDMConexao;

{$R *.dfm}

class function TFrmManutencaoBase.Editar(ADataSet: TDataSet; AController: TControllerAbstract;
  AClassForm: TComponentClass): Boolean;
var
  Form: TForm;
begin
  if not ADataSet.IsEmpty then
  begin
    Application.CreateForm(AClassForm, Form);
    try
      Controller := AController;
      TFrmManutencaoBase(Form).dsManutencao.DataSet := ADataSet;
      Result := (Form.ShowModal = mrOk);
    finally
      Form.Free;
    end;
  end
  else
    Result := False;
end;

procedure TFrmManutencaoBase.actCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmManutencaoBase.actSalvarExecute(Sender: TObject);
begin
  FDadosSalvos := Salvar;

  if FDadosSalvos then
    Close;
end;

procedure TFrmManutencaoBase.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  i: Integer;
begin
  if dsManutencao.DataSet.State in dsEditModes then
  begin
    i := Application.MessageBox('Existem dados modificados, deseja salvar as mudanças?', 'Manutenção', MB_YESNOCANCEL + MB_ICONQUESTION);

    if i = mrNo then
    begin
      dsManutencao.DataSet.Cancel;
      CanClose := True;
    end
    else if i = mrYes then
      CanClose := Salvar
    else
      CanClose := False;
  end
  else
    CanClose := True;
end;

procedure TFrmManutencaoBase.FormCreate(Sender: TObject);
begin
  //
end;

procedure TFrmManutencaoBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

function TFrmManutencaoBase.Salvar: Boolean;
begin
  Result := Controller.Salvar(TdxEMFDataSet(dsManutencao.DataSet));
end;

end.
