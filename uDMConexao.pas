unit uDMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  dxEMF.Core, dxEMF.DataProvider.FireDAC, Data.DB, FireDAC.Comp.Client,
  dxEMF.Types, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Comp.UI, dxEMF.DB.Firebird, FireDAC.DApt;

type
  TDMConexao = class(TDataModule)
    FDConn: TFDConnection;
    dxEMFSession: TdxEMFSession;
    dxEMFFireDACDataProvider: TdxEMFFireDACDataProvider;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

uses
  Cliente, Produto, Servico, NotaFiscal;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMConexao.DataModuleCreate(Sender: TObject);
var
  DBPath: string;
begin
  if not DirectoryExists(GetCurrentDir + '\Data') then
    CreateDir(GetCurrentDir + '\Data');

  DBPath := 'Data\dbazsolutions.fdb';
  dxEMFFireDACDataProvider.Options.AutoCreate := TdxAutoCreateOption.DatabaseAndSchema;
  FDConn.Params.Add('Database=' + DBPath);
  FDConn.Params.Add('DriverID=FB');
  FDConn.Params.Add('User_Name=sysdba');
  FDConn.Params.Add('Password=masterkey');
  FDConn.Params.Add('CharacterSet=utf8');
  FDConn.Params.Add('CreateDataBase=' + BoolToStr(not FileExists(DBPath),True));

  FDConn.LoginPrompt := False;
  dxEMFSession.CreateSchema([TCliente, TProduto, TServico, TNotaFiscal,
    TNotaFiscalProduto, TNotaFiscalServico]);
end;

end.
