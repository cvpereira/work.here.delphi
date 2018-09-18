unit NotaFiscalProduto;

interface

uses
  Classes, dxEMF.Core, dxEMF.Attributes, dxEMF.Types, dxEMF.Core.Collections, dxEMF.DB.Generator,
  NotaFiscal;

type
  [Entity]
  [Table('NotaFiscalProduto')]
  [AutoMapping]
  TNotaFiscalProduto = class
  strict private
    [Generator(TdxGeneratorType.Identity)]
    [Colum, Key]
    FNotaFiscalProdutoId: Integer;
    [Colum('ValorUnitario')]
    FValorUnitario: Double;
    [Colum('Quantidade')]
    FQuantidade: Integer;
    [Colum('ValorTotal')]
    FValorTotal: Double;
    [Colum('NotaFiscal')]
    FNotaFiscal: TNotaFiscal;

  public
    property NotaFiscalProdutoId: Integer read FNotaFiscalProdutoId write FNotaFiscalProdutoId;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorTotal: Double read FValorTotal write FValorTotal;
    property NotaFiscal: TNotaFiscal read FNotaFiscal write FNotaFiscal;

  end;

implementation

end.
