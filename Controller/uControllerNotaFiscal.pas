unit uControllerNotaFiscal;

interface

uses
  uControllerAbstract, Windows, System.SysUtils, Data.DB, dxEMF.Core, dxEMF.DataSet, dxEMF.DataProvider.FireDAC, FireDAC.Comp.Client,
  Vcl.Dialogs, Vcl.Forms;

type
  TControllerNotaFiscal = Class(TControllerAbstract)
  public
    function Validar(AObject: TObject): Boolean; override;

  end;

implementation

uses
  NotaFiscal;

{ TControllerNotaFiscal }

function TControllerNotaFiscal.Validar(AObject: TObject): Boolean;
begin
  Result := True;
  if TNotaFiscal(AObject).ValorTotal = 0 then
  begin
    Application.MessageBox('O valor total da nota deve maior que zero.', 'Atenção', MB_OK + MB_ICONWARNING);
    Result := False;
    Exit;
  end;
end;

end.
