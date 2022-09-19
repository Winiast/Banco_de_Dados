package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.models.Emails;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;

public class AcoesEmail {

    @FXML
    ListView<Emails> emailContato;

    public void cadastraEmail(ActionEvent e) {
        App.pushScreen("CADASTRA_EMAIL");
    }

    public void deletaEmail(ActionEvent e) {

    }

    public void editaEmail(ActionEvent e) {

    }

    public void voltarTela(ActionEvent e) {
        App.popScreen();
    }
}
