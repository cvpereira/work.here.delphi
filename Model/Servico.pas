unit Servico;

interface

uses
  Classes, dxEMF.Core, dxEMF.Attributes, dxEMF.Types, dxEMF.Core.Collections, dxEMF.DB.Generator;

type
  [Entity]
  [Table('Servico')]
  [AutoMapping]
  TServico = class
    strict private
      [Generator(TdxGeneratorType.Identity)]
      [Column, Key]
      FServicoId: Integer;
      [Colum('Nome')]
      [Size(100)]
      FNome: string;

    public
     property ServicoId: Integer read FServicoId write FServicoId;
     property Nome: string read FNome write FNome;

  end;

implementation

end.
