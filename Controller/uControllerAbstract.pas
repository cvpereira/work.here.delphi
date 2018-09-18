unit uControllerAbstract;

interface

uses
  Windows, System.SysUtils, Data.DB, dxEMF.Core, dxEMF.DataSet, dxEMF.DataProvider.FireDAC, FireDAC.Comp.Client;

type
  TControllerAbstract = class
  private
    FEntity: TObject;
    FEntityClass: TClass;

  public
    function Salvar(AObjectDataSet: TdxEMFDataSet): Boolean overload;
    function Salvar(AObject: TObject): Boolean overload;
    function Excluir(AObjectDataSet: TdxEMFDataSet): Boolean;
    function Validar(AObjectDataSet: TdxEMFDataSet): Boolean; overload; virtual; abstract;
    function Validar(AObject: TObject): Boolean; overload; virtual; abstract;

    property Entity: TObject read FEntity write FEntity;
    property EntityClass: TClass read FEntityClass write FEntityClass;

  end;

implementation

uses
  uDMConexao;

{ TControllerAbstract }

function TControllerAbstract.Excluir(AObjectDataSet: TdxEMFDataSet): Boolean;
begin
  if AObjectDataSet.State in dsEditModes then
    AObjectDataSet.Post;

  FEntity := AObjectDataSet.Current;

  try
    DMConexao.dxEMFSession.Delete(FEntity);
    Result := True;
  except
    on E: Exception do
    begin
      DMConexao.dxEMFSession.DropChanges;
      raise;
    end;
  end;
end;

function TControllerAbstract.Salvar(AObjectDataSet: TdxEMFDataSet): Boolean;
begin
  if not Validar(AObjectDataSet) then
  begin
    Result := False;
    Exit;
  end;

  if AObjectDataSet.State in dsEditModes then
    AObjectDataSet.Post;

  FEntity := AObjectDataSet.Current;

  try
    DMConexao.dxEMFSession.Save(FEntity);
    Result := True;
  except
    on E: Exception do
    begin
      DMConexao.dxEMFSession.DropChanges;
      raise;
    end;
  end;
end;

function TControllerAbstract.Salvar(AObject: TObject): Boolean;
begin
  if not Validar(AObject) then
  begin
    Result := False;
    Exit;
  end;

  FEntity := AObject;

  try
    DMConexao.dxEMFSession.Save(FEntity);
    Result := True;
  except
    on E: Exception do
    begin
      DMConexao.dxEMFSession.DropChanges;
      raise;
    end;
  end;
end;

end.
