package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.NomeDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

public class CadastraNome {

    @FXML
    TextField nomeContato;

    public void cadastraNome(ActionEvent e) {
        NomeDAO novoContato = new NomeDAO();
        novoContato.insert(nomeContato.getText());
        nomeContato.clear();
    }

    public void voltarTela(ActionEvent e) {
        App.popScreen();
    }
}
