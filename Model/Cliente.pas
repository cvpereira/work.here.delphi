unit Cliente;

interface

uses
  Classes, dxEMF.Core, dxEMF.Attributes, dxEMF.Types, dxEMF.Core.Collections, dxEMF.DB.Generator;

type
  [Entity]
  [Table('Cliente')]
  [AutoMapping]
  TCliente = class
  strict private
    [Generator(TdxGeneratorType.Identity)]
    [Column, Key]
    FClienteId: Integer;
    [Colum('Nome')]
    FNome: string;
    [Colum('Telefone')]
    FTelefone: string;
    [Colum('Cidade')]
    FCidade: Integer;
    [Colum('Estado')]
    FEstado: Integer;

  public
    property ClienteId: Integer read FClienteId;
    property Nome: string read FNome write FNome;
    property Telefone: string read FTelefone write FTelefone;
    property Cidade: Integer read FCidade write FCidade;
    property Estado: Integer read FEstado write FEstado;

  end;

implementation

end.
