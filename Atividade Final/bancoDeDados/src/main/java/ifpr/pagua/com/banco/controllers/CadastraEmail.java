package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.EmailDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class CadastraEmail {

    @FXML
    TextField emailContato;

    public void cadastraEmail(ActionEvent e) {
        EmailDAO novoEmail = new EmailDAO();
        novoEmail.insert(5, emailContato.getText());
        emailContato.clear();

    }

    public void voltarTela(ActionEvent e) {
        App.pushScreen("ACOES_EMAIL");
    }

}
