program TesteAZSolutions;

uses
  Vcl.Forms,
  uTesteAZSolutions in 'uTesteAZSolutions.pas' {FrmTesteAZSolutions},
  Cliente in 'Model\Cliente.pas',
  Produto in 'Model\Produto.pas',
  Servico in 'Model\Servico.pas',
  NotaFiscal in 'Model\NotaFiscal.pas',
  uDMConexao in 'uDMConexao.pas' {DMConexao: TDataModule},
  uFrmListagemBase in 'View\uFrmListagemBase.pas' {FrmListagemBase},
  uFrmListagemCliente in 'View\uFrmListagemCliente.pas' {FrmListagemCliente},
  uFrmManutencaoBase in 'View\uFrmManutencaoBase.pas' {FrmManutencaoBase},
  uFrmManutencaoCliente in 'View\uFrmManutencaoCliente.pas' {FrmManutencaoCliente},
  uControllerAbstract in 'Controller\uControllerAbstract.pas',
  uControllerCliente in 'Controller\uControllerCliente.pas',
  uControllerServico in 'Controller\uControllerServico.pas',
  uFrmListagemServico in 'View\uFrmListagemServico.pas' {FrmListagemServico},
  uFrmManutencaoServico in 'View\uFrmManutencaoServico.pas' {FrmManutencaoServico},
  uFrmListagemProduto in 'View\uFrmListagemProduto.pas' {FrmListagemProduto},
  uFrmManutencaoProduto in 'View\uFrmManutencaoProduto.pas' {FrmManutencaoProduto},
  uControllerProduto in 'Controller\uControllerProduto.pas',
  uFrmListagemNotaFiscal in 'View\uFrmListagemNotaFiscal.pas' {FrmListagemNotaFiscal},
  uFrmManutencaoNotaFiscal in 'View\uFrmManutencaoNotaFiscal.pas' {FrmManutencaoNotaFiscal},
  uControllerNotaFiscal in 'Controller\uControllerNotaFiscal.pas',
  uFrmManutencaoProdutoNotaFiscal in 'View\uFrmManutencaoProdutoNotaFiscal.pas' {FrmManutencaoProdutoNotaFiscal},
  uFrmManutencaoServicoNotaFiscal in 'View\uFrmManutencaoServicoNotaFiscal.pas' {FrmManutencaoServicoNotaFiscal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFrmTesteAZSolutions, FrmTesteAZSolutions);
  Application.Run;
end.
