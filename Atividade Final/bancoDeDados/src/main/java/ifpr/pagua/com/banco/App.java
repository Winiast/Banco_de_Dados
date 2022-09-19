package ifpr.pagua.com.banco;

import ifpr.pagua.com.banco.DAO.ConnectionFactory;
import ifpr.pagua.com.banco.DAO.NomeDAO;
import ifpr.pagua.com.banco.controllers.CadastraNome;
import ifpr.pagua.com.banco.controllers.ListaNomes;
import ifpr.pagua.com.banco.controllers.TelaInicial;
import ifpr.pagua.com.banco.models.Contato;
import ifpr.pagua.com.banco.utils.BaseAppNavigator;
import ifpr.pagua.com.banco.utils.ScreenRegistryFXML;

/**
 * JavaFX App
 */
public class App extends BaseAppNavigator {

    @Override
    public void init() throws Exception {
        super.init();
        // Contato zefim = new Contato("Zefim", "4199232", "zezim@gmail.com");
        // ConnectionFactory conexao = new ConnectionFactory();
        // System.out.println(conexao.getConnection());
        // NomeDAO novoMenino = new NomeDAO();
        // novoMenino.insert(zefim);
        // // carregar
    }

    @Override
    public void stop() throws Exception {
        // TODO Auto-generated method stub
        super.stop();

        // salvar
    }

    @Override
    public String getHome() {
        return "TELAINICIAL";
    }

    @Override
    public String getAppTitle() {
        return "CONTATOS";
    }

    @Override
    public void registrarTelas() {
        registraTela("TELAINICIAL", new ScreenRegistryFXML(App.class,
                "TelaInicial.fxml", o -> new TelaInicial()));
        registraTela("CADASTRO_NOME", new ScreenRegistryFXML(App.class,
                "CadastraNome.fxml", o -> new CadastraNome()));
        registraTela("LISTA_NOMES", new ScreenRegistryFXML(App.class,
                "ListaNomes.fxml", o -> new ListaNomes()));
    }

    public void atualizaEstilo() {
        adicionarArquivoEstilo(getClass().getResource("styles/global.css").toExternalForm());
    }

    public static void main(String[] args) {
        launch();
    }

}