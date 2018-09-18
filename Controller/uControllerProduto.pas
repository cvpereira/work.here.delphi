unit uControllerProduto;

interface

uses
  uControllerAbstract, Windows, System.SysUtils, Data.DB, dxEMF.Core, dxEMF.DataSet, dxEMF.DataProvider.FireDAC, FireDAC.Comp.Client,
  Vcl.Dialogs, Vcl.Forms;

type
  TControllerProduto = Class(TControllerAbstract)
  public
    function Validar(AObjectDataSet: TdxEMFDataSet): Boolean; override;

  end;

implementation

{ TControllerProduto }

function TControllerProduto.Validar(AObjectDataSet: TdxEMFDataSet): Boolean;
begin
  Result := True;
  if AObjectDataSet.FieldByName('Nome').AsString = '' then
  begin
    Application.MessageBox('O nome do produto deve ser preenchido.', 'Atenção', MB_OK + MB_ICONWARNING);
    Result := False;
    AObjectDataSet.FieldByName('Nome').FocusControl;
    Exit;
  end;
end;

end.
