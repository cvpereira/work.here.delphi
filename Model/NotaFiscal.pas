unit NotaFiscal;

interface

uses
  Classes, Cliente, dxEMF.Core, dxEMF.Attributes, dxEMF.Types, dxEMF.Core.Collections,
    dxEMF.DB.Generator, Produto, Servico;

type
  TNotaFiscalProduto = class;
  TNotaFiscalServico = class;

  [Entity]
  [Table('NotaFiscal')]
  [AutoMapping]
  TNotaFiscal = class
    strict private
      [Generator(TdxGeneratorType.Identity)]
      [Column, Key]
      FNotaFiscalId: Integer;
      [Colum('Data')]
      FData: TDateTime;
      [Colum('ValorTotal')]
      FValorTotal: Double;
      [Colum('Cliente')]
      FCliente: TCliente;
      [Association, Aggregated]
      FProdutos: IdxEMFCollection<TNotaFiscalProduto>;
      [Association, Aggregated]
      FServicos: IdxEMFCollection<TNotaFiscalServico>;

    public
     constructor Create;
     property NotaFiscalId: Integer read FNotaFiscalId write FNotaFiscalId;
     property Data: TDateTime read FData write FData;
     property ValorTotal: Double read FValorTotal write FValorTotal;
     property Cliente: TCliente read FCliente write FCliente;
     property Produtos: IdxEMFCollection<TNotaFiscalProduto> read FProdutos;
     property Servicos: IdxEMFCollection<TNotaFiscalServico> read FServicos;

  end;

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
    [Colum('Produto')]
    FProduto: TProduto;
    [Association]
    FNotaFiscal: TNotaFiscal;

  public
    property NotaFiscalProdutoId: Integer read FNotaFiscalProdutoId write FNotaFiscalProdutoId;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorTotal: Double read FValorTotal write FValorTotal;
    property Produto: TProduto read FProduto write FProduto;
    property NotaFiscal: TNotaFiscal read FNotaFiscal write FNotaFiscal;

  end;

  [Entity]
  [Table('NotaFiscalServico')]
  [AutoMapping]
  TNotaFiscalServico = class
  strict private
    [Generator(TdxGeneratorType.Identity)]
    [Colum, Key]
    FNotaFiscalServicoId: Integer;
    [Colum('ValorUnitario')]
    FValorUnitario: Double;
    [Colum('Quantidade')]
    FQuantidade: Integer;
    [Colum('ValorTotal')]
    FValorTotal: Double;
    [Colum('Produto')]
    FServico: TServico;
    [Association]
    FNotaFiscal: TNotaFiscal;

  public
    property NotaFiscalServicoId: Integer read FNotaFiscalServicoId write FNotaFiscalServicoId;
    property ValorUnitario: Double read FValorUnitario write FValorUnitario;
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property ValorTotal: Double read FValorTotal write FValorTotal;
    property Servico: TServico read FServico write FServico;
    property NotaFiscal: TNotaFiscal read FNotaFiscal write FNotaFiscal;

  end;

implementation

{ TNotaFiscal }

constructor TNotaFiscal.Create;
begin
  inherited;
  FProdutos := TdxEMFCollections.Create<TNotaFiscalProduto>(Self, 'FProdutos');
  FServicos := TdxEMFCollections.Create<TNotaFiscalServico>(Self, 'FServicos');
end;

end.
