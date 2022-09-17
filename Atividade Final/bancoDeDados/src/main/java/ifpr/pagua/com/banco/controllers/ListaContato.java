package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.models.Contato;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;

public class ListaContato {

    @FXML
    private ListView<Contato> contatos;

    public void mostrarOpcoesDeEdicao(ActionEvent event) {
        System.out.println("Opcoes de Edição");
    }

    public void excluirContato(ActionEvent event) {
        System.out.println("Excluir Contato");
    }
}
