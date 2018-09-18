unit uFrmManutencaoCliente;

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
  dxSkinVisualStudio2013Light, dxSkinVS2010, System.ImageList, Vcl.ImgList,
  cxImageList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, Vcl.ComCtrls, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDBEdit, cxLabel, cxTextEdit, cxDropDownEdit, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, Datasnap.DBClient, REST.Response.Adapter;

type
  TFrmManutencaoCliente = class(TFrmManutencaoBase)
    dbedtNomeCliente: TcxDBTextEdit;
    lblNome: TcxLabel;
    lblTelefone: TcxLabel;
    dbedtTelefone: TcxDBMaskEdit;
    lblEstado: TcxLabel;
    lblCidade: TcxLabel;
    RESTClientEstado: TRESTClient;
    RESTRequestEstado: TRESTRequest;
    RESTResponseEstado: TRESTResponse;
    RESTResponseDataSetAdapterEstado: TRESTResponseDataSetAdapter;
    cdsEstadoLookup: TClientDataSet;
    dblkpcmbxEstado: TcxDBLookupComboBox;
    dblkpcmbxCidade: TcxDBLookupComboBox;
    dsEstado: TDataSource;
    cdsEstado: TClientDataSet;
    cdsEstadoEstado: TIntegerField;
    cdsEstadoNome: TStringField;
    RESTClientCidade: TRESTClient;
    RESTRequestCidade: TRESTRequest;
    RESTResponseCidade: TRESTResponse;
    RESTResponseDataSetAdapterCidade: TRESTResponseDataSetAdapter;
    cdsCidadeLookup: TClientDataSet;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeCidade: TIntegerField;
    cdsCidadeNome: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblkpcmbxEstadoPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManutencaoCliente: TFrmManutencaoCliente;

implementation

{$R *.dfm}

procedure TFrmManutencaoCliente.dblkpcmbxEstadoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dblkpcmbxEstado.DataBinding.Field.AsString = '' then
    Exit;

  RESTRequestCidade.Params.ParameterByName('IDEstrado').Value := dblkpcmbxEstado.DataBinding.Field.AsString;
  RESTRequestCidade.Execute;

  if RESTRequestCidade.Response.StatusCode = 200 then
  begin
    cdsCidadeLookup.First;

    while not cdsCidadeLookup.Eof do
    begin
      cdsCidade.Append;
      cdsCidadeCidade.AsInteger := cdsCidadeLookup.Fields[0].AsInteger;
      cdsCidadeNome.AsString    := AnsiUpperCase(cdsCidadeLookup.Fields[1].AsString);

      cdsCidade.Post;
      cdsCidadeLookup.Next;
    end;
  end;
end;

procedure TFrmManutencaoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  cdsEstado.CreateDataSet;
  cdsCidade.CreateDataSet;
end;

procedure TFrmManutencaoCliente.FormShow(Sender: TObject);
begin
  inherited;
  RESTRequestEstado.Execute;

  if RESTRequestEstado.Response.StatusCode = 200 then
  begin
    cdsEstadoLookup.First;

    while not cdsEstadoLookup.Eof do
    begin
      cdsEstado.Append;
      cdsEstadoEstado.AsInteger := cdsEstadoLookup.Fields[0].AsInteger;
      cdsEstadoNome.AsString    := AnsiUpperCase(cdsEstadoLookup.Fields[1].AsString);

      cdsEstado.Post;
      cdsEstadoLookup.Next;
    end;
  end;
end;

end.
