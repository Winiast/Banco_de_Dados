package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.models.Nomes;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;

public class ListaNomes {

    @FXML
    ListView<Nomes> nome;

    public void acoesDeEmail(ActionEvent e) {
        System.out.println("Acoes de email");
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

}
