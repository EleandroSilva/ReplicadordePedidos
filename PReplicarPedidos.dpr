program PReplicarPedidos;

uses
  Vcl.Forms,
  ReplicarPedidos in 'src\mvc\view\ReplicarPedidos.pas' {frmReplicarPedidos},
  Controller.Interfaces in 'src\mvc\controller\interfaces\Controller.Interfaces.pas',
  Model.Factory.DAO.Interfaces in 'src\mvc\model\factory\interfaces\Model.Factory.DAO.Interfaces.pas',
  Model.DAO.Pedidos.Interfaces in 'src\mvc\model\DAO\interfaces\Model.DAO.Pedidos.Interfaces.pas',
  Controller.Imp in 'src\mvc\controller\imp\Controller.Imp.pas',
  Model.Factory.DAO.Imp in 'src\mvc\model\factory\imp\Model.Factory.DAO.Imp.pas',
  Model.DAO.Pedidos.Imp in 'src\mvc\model\DAO\imp\Model.DAO.Pedidos.Imp.pas',
  Model.Entidade.Pedidos.Interfaces in 'src\mvc\model\entidade\interfaces\Model.Entidade.Pedidos.Interfaces.pas',
  Model.Entidade.Pedidos.Imp in 'src\mvc\model\entidade\imp\Model.Entidade.Pedidos.Imp.pas',
  Model.Conexao.Configuracao.Firebird.Interfaces in 'src\mvc\model\conexao\interfaces\Model.Conexao.Configuracao.Firebird.Interfaces.pas',
  Model.Conexao.Firedac.Interfaces in 'src\mvc\model\conexao\interfaces\Model.Conexao.Firedac.Interfaces.pas',
  Model.Conexao.Query.Interfaces in 'src\mvc\model\conexao\interfaces\Model.Conexao.Query.Interfaces.pas',
  Model.Conexao.Configuracao.Firebird.Imp in 'src\mvc\model\conexao\imp\Model.Conexao.Configuracao.Firebird.Imp.pas',
  Model.Conexao.Firedac.Firebird.Imp in 'src\mvc\model\conexao\imp\Model.Conexao.Firedac.Firebird.Imp.pas',
  Model.Conexao.Query.Imp in 'src\mvc\model\conexao\imp\Model.Conexao.Query.Imp.pas',
  Uteis.Interfaces in 'src\mvc\model\uteis\interfaces\Uteis.Interfaces.pas',
  Uteis in 'src\mvc\model\uteis\imp\Uteis.pas',
  Uteis.Tratar.Mensagens in 'src\mvc\model\uteis\imp\Uteis.Tratar.Mensagens.pas',
  Model.Entidade.Pedidos.Itens.Interfaces in 'src\mvc\model\entidade\interfaces\Model.Entidade.Pedidos.Itens.Interfaces.pas',
  Model.Entidade.Pedidos.Itens.Imp in 'src\mvc\model\entidade\imp\Model.Entidade.Pedidos.Itens.Imp.pas',
  Model.DAO.Pedidos.Itens.Interfaces in 'src\mvc\model\DAO\interfaces\Model.DAO.Pedidos.Itens.Interfaces.pas',
  Model.DAO.Pedidos.Itens.Imp in 'src\mvc\model\DAO\imp\Model.DAO.Pedidos.Itens.Imp.pas',
  Model.Entidade.Pedidos.Pagamentos.Interfaces in 'src\mvc\model\entidade\interfaces\Model.Entidade.Pedidos.Pagamentos.Interfaces.pas',
  Model.Entidade.Pedidos.Pagamentos.Imp in 'src\mvc\model\entidade\imp\Model.Entidade.Pedidos.Pagamentos.Imp.pas',
  Model.DAO.Pedidos.Pagamentos.Interfaces in 'src\mvc\model\DAO\interfaces\Model.DAO.Pedidos.Pagamentos.Interfaces.pas',
  Model.DAO.Pedidos.Pagamentos.Imp in 'src\mvc\model\DAO\imp\Model.DAO.Pedidos.Pagamentos.Imp.pas',
  Model.Entidade.Pessoa.Interfaces in 'src\mvc\model\entidade\interfaces\Model.Entidade.Pessoa.Interfaces.pas',
  Model.Entidade.Pessoa.Imp in 'src\mvc\model\entidade\imp\Model.Entidade.Pessoa.Imp.pas',
  Model.DAO.Pessoa.Interfaces in 'src\mvc\model\DAO\interfaces\Model.DAO.Pessoa.Interfaces.pas',
  Model.DAO.Pessoa.Imp in 'src\mvc\model\DAO\imp\Model.DAO.Pessoa.Imp.pas',
  View.Entidade.Pesquisar.Pessoa in 'src\mvc\view\Entidades\Pesquisar\View.Entidade.Pesquisar.Pessoa.pas' {frmViewPesquisarPessoa},
  Model.Entidade.Prazo.Pagamento.Interfaces in 'src\mvc\model\entidade\interfaces\Model.Entidade.Prazo.Pagamento.Interfaces.pas',
  Model.Entidade.Prazo.Pagamento.Itens.Interfaces in 'src\mvc\model\entidade\interfaces\Model.Entidade.Prazo.Pagamento.Itens.Interfaces.pas',
  Model.Entidade.Prazo.Pagamento.Imp in 'src\mvc\model\entidade\imp\Model.Entidade.Prazo.Pagamento.Imp.pas',
  Model.Entidade.Prazo.Pagamento.Itens.Imp in 'src\mvc\model\entidade\imp\Model.Entidade.Prazo.Pagamento.Itens.Imp.pas',
  Model.DAO.Prazo.Pagamento.Interfaces in 'src\mvc\model\DAO\interfaces\Model.DAO.Prazo.Pagamento.Interfaces.pas',
  Model.DAO.Prazo.Pagamento.Itens.Interfaces in 'src\mvc\model\DAO\interfaces\Model.DAO.Prazo.Pagamento.Itens.Interfaces.pas',
  Model.DAO.Prazo.Pagamento.Imp in 'src\mvc\model\DAO\imp\Model.DAO.Prazo.Pagamento.Imp.pas',
  Model.DAO.Prazo.Pagamento.Itens.Imp in 'src\mvc\model\DAO\imp\Model.DAO.Prazo.Pagamento.Itens.Imp.pas',
  Model.Entidade.Calcular.Valor.Parcela.Interfaces in 'src\mvc\model\entidade\interfaces\Model.Entidade.Calcular.Valor.Parcela.Interfaces.pas',
  Model.Entidade.Calcular.Valor.Parcela.Imp in 'src\mvc\model\entidade\imp\Model.Entidade.Calcular.Valor.Parcela.Imp.pas',
  Model.DAO.Calcular.Valor.Parcela.Interfaces in 'src\mvc\model\DAO\interfaces\Model.DAO.Calcular.Valor.Parcela.Interfaces.pas',
  Mmodel.DAO.Calcular.Valor.Parcela.Imp in 'src\mvc\model\DAO\imp\Mmodel.DAO.Calcular.Valor.Parcela.Imp.pas',
  View.Entidade.Pesquisar.Pagamento in 'src\mvc\view\Entidades\Pesquisar\View.Entidade.Pesquisar.Pagamento.pas' {frmViewPesquisarPagamento};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmReplicarPedidos, frmReplicarPedidos);
  Application.Run;
end.
