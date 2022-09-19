package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class CadastraNome {

    @FXML
    TextField nomeContato;

    public void cadastraNome(ActionEvent e) {
        System.out.println("Cadastrado");
    }

    public void voltarTela(ActionEvent e) {
        App.popScreen();
    }
}
