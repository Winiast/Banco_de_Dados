package ifpr.pagua.com.banco.controllers;

import java.sql.SQLException;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.NomeDAO;
import javafx.event.ActionEvent;

public class TelaInicial {

    public void mudaTelaParaCadastroNome(ActionEvent event) throws SQLException {
        App.pushScreen("CADASTRO_NOME");
        NomeDAO nome = new NomeDAO();
        System.out.println(nome.list());
    }

    public void mudaTelaParaListaContato(ActionEvent event) {
        App.pushScreen("LISTA_NOMES");
    }
}
