package ifpr.pagua.com.banco.controllers;

import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.NomeDAO;
import ifpr.pagua.com.banco.models.Nomes;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;

public class ListaNomes implements Initializable {

    @FXML
    ListView<Nomes> listaContatos;

    public void acoesDeEmail(ActionEvent e) {
        App.pushScreen("ACOES_EMAIL");
    }

    public void acoesDeTelefone(ActionEvent e) {
        System.out.println("Acoes de telefone");
    }

    public void excluirNome(ActionEvent e) {
        System.out.println("excluir nome");
    }

    public void voltarTela(ActionEvent e) {
        App.popScreen();
    }

    public NomeDAO nomesView;

    @Override
    public void initialize(URL arg0, ResourceBundle arg1) {
        // TODO Auto-generated method stub
        nomesView = new NomeDAO();
        try {
            listaContatos.getItems().clear();
            listaContatos.getItems().addAll(nomesView.list());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
