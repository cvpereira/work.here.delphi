unit Produto;

interface

uses
  Classes, dxEMF.Core, dxEMF.Attributes, dxEMF.Types, dxEMF.Core.Collections, dxEMF.DB.Generator;

type
  [Entity]
  [Table('Produto')]
  [AutoMapping]
  TProduto = class
    strict private
      [Generator(TdxGeneratorType.Identity)]
      [Column, Key]
      FProdutoId: Integer;
      [Colum('Nome')]
      [Size(100)]
      FNome: string;

    public
     property ProdutoId: Integer read FProdutoId write FProdutoId;
     property Nome: string read FNome write FNome;

  end;

implementation

end.
