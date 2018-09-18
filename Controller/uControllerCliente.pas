unit uControllerCliente;

interface

uses
  uControllerAbstract, Windows, System.SysUtils, Data.DB, dxEMF.Core, dxEMF.DataSet, dxEMF.DataProvider.FireDAC, FireDAC.Comp.Client,
  Vcl.Dialogs, Vcl.Forms;

type
  TControllerCliente = Class(TControllerAbstract)
  public
    function Validar(AObjectDataSet: TdxEMFDataSet): Boolean; override;

  end;

implementation

{ TControllerCliente }

function TControllerCliente.Validar(AObjectDataSet: TdxEMFDataSet): Boolean;
begin
  Result := True;
  if AObjectDataSet.FieldByName('Nome').AsString = '' then
  begin
    Application.MessageBox('O nome do cliente deve ser preenchido.', 'Atenção', MB_OK + MB_ICONWARNING);
    Result := False;
    AObjectDataSet.FieldByName('Nome').FocusControl;
    Exit;
  end;

  if AObjectDataSet.FieldByName('Estado').AsInteger = 0 then
  begin
    Application.MessageBox('O estado do cliente deve ser preenchido.', 'Atenção', MB_OK + MB_ICONWARNING);
    Result := False;
    AObjectDataSet.FieldByName('Estado').FocusControl;
    Exit;
  end;

  if AObjectDataSet.FieldByName('Cidade').AsInteger = 0 then
  begin
    Application.MessageBox('A cidade do cliente deve ser preenchida.', 'Atenção', MB_OK + MB_ICONWARNING);
    Result := False;
    AObjectDataSet.FieldByName('Cidade').FocusControl;
    Exit;
  end;
end;

end.
