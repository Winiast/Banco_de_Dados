package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.ContatoDAO;
import ifpr.pagua.com.banco.models.Contato;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;

public class CadastroContato {

    @FXML
    private TextField nome;

    @FXML
    private TextField email;

    @FXML
    private TextField telefone;

    @FXML
    private Button cadastrar;

    @FXML
    private Button voltarTela;

    public void cadastrarContato(ActionEvent Event) {
        String nomeContato = nome.getText();
        String emailContato = email.getText();
        String telefoneContato = telefone.getText();
        Contato novoContato = new Contato(nomeContato, telefoneContato, emailContato);
        ContatoDAO novoContatoDAO = new ContatoDAO();
        novoContatoDAO.insert(novoContato);

        System.out.println(nomeContato + emailContato + telefoneContato);
        Alert alert = new Alert(AlertType.INFORMATION, "Cadastrado com sucesso");
        alert.show();
    }

    public void voltarTelaInicial(ActionEvent Event) {
        App.popScreen();
    }

}
