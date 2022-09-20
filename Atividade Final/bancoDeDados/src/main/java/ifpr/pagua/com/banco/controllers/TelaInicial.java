package ifpr.pagua.com.banco.controllers;

import java.sql.SQLException;

import ifpr.pagua.com.banco.App;
import javafx.event.ActionEvent;

public class TelaInicial {

    public void mudaTelaParaCadastroNome(ActionEvent event) throws SQLException {
        App.pushScreen("CADASTRO_NOME");
    }

    public void mudaTelaParaListaContato(ActionEvent event) {
        App.pushScreen("LISTA_NOMES");
    }
}
