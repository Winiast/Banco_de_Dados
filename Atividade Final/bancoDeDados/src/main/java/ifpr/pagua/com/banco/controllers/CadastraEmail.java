package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class CadastraEmail {

    @FXML
    TextField emailContato;

    public void cadastraEmail(ActionEvent e) {
        System.out.println("Email cadastrado");
    }

    public void voltarTela(ActionEvent e) {
        App.popScreen();
    }

}
