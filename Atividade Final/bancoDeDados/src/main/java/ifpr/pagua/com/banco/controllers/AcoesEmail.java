package ifpr.pagua.com.banco.controllers;

import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.EmailDAO;
import ifpr.pagua.com.banco.models.Emails;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;

public class AcoesEmail implements Initializable {

    @FXML
    ListView<Emails> emailContato;

    public void cadastraEmail(ActionEvent e) {
        App.pushScreen("CADASTRA_EMAIL");
    }

    public void deletaEmail(ActionEvent e) throws SQLException {
        emailDAO.delete(emailContato.getSelectionModel().getSelectedItem().getEmail());
        emailContato.getItems().clear();
        emailContato.getItems().addAll(emailDAO.list());
    }

    public void editaEmail(ActionEvent e) {

    }

    public void voltarTela(ActionEvent e) {
        App.pushScreen("LISTA_NOMES");
    }

    public EmailDAO emailDAO = new EmailDAO();

    @Override
    public void initialize(URL arg0, ResourceBundle arg1) {
        try {
            emailContato.getItems().clear();
            emailContato.getItems().addAll(emailDAO.list());
            // TODO Auto-generated method stub

        } catch (Exception e) {
            // TODO: handle exception
        }

    }

}
