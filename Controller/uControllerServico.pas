unit uControllerServico;

interface

uses
  uControllerAbstract, Windows, System.SysUtils, Data.DB, dxEMF.Core, dxEMF.DataSet, dxEMF.DataProvider.FireDAC, FireDAC.Comp.Client,
  Vcl.Dialogs, Vcl.Forms;

type
  TControllerServico = Class(TControllerAbstract)
  public
    function Validar(AObjectDataSet: TdxEMFDataSet): Boolean; override;

  end;

implementation

{ TControllerProduto }

function TControllerServico.Validar(AObjectDataSet: TdxEMFDataSet): Boolean;
begin
  Result := True;
  if AObjectDataSet.FieldByName('Nome').AsString = '' then
  begin
    Application.MessageBox('O nome do servi�o deve ser preenchido.', 'Aten��o', MB_OK + MB_ICONWARNING);
    Result := False;
    AObjectDataSet.FieldByName('Nome').FocusControl;
    Exit;
  end;
end;

end.
