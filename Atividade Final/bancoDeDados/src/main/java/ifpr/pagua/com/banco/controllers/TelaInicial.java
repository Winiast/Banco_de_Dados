package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import javafx.event.ActionEvent;

public class TelaInicial {

    public void mudaTelaParaCadastro(ActionEvent event) {
        App.pushScreen("CADASTRO");
    }
}
