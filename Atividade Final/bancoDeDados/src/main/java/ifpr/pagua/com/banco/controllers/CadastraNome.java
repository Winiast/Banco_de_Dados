package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.NomeDAO;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;

public class CadastraNome {

    @FXML
    TextField nomeContato;

    public void cadastraNome(ActionEvent e) {
        NomeDAO novoContato = new NomeDAO();
        novoContato.insert(nomeContato.getText());
        Alert alerta = new Alert(AlertType.INFORMATION, "Cadastrado com sucesso");
        nomeContato.clear();
        alerta.show();
    }

    public void voltarTela(ActionEvent e) {
        App.popScreen();
    }
}
