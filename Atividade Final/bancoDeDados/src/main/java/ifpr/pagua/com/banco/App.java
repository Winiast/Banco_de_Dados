package ifpr.pagua.com.banco;

import ifpr.pagua.com.banco.controllers.TelaInicial;
import ifpr.pagua.com.banco.utils.BaseAppNavigator;
import ifpr.pagua.com.banco.utils.ScreenRegistryFXML;

/**
 * JavaFX App
 */
public class App extends BaseAppNavigator {

    @Override
    public void init() throws Exception {
        super.init();

        // carregar
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
                "primary.fxml", o -> new TelaInicial()));

    }

    // public void atualizaEstilo() {
    // adicionarArquivoEstilo(getClass().getResource("styles/global.css").toExternalForm());
    // }

    public static void main(String[] args) {
        launch();
    }

}