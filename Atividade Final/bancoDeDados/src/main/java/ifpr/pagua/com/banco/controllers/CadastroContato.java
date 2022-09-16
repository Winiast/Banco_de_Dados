package ifpr.pagua.com.banco.controllers;

import ifpr.pagua.com.banco.App;
import javafx.event.ActionEvent;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class CadastroContato {

    private TextField nome;

    private TextField email;

    private TextField telefone;

    private Button cadastrar;

    private Button voltarTela;

    public void cadastrarContato(ActionEvent Event) {
        System.out.println("Cadastrar Contato");
    }

    public void voltarTelaInicial(ActionEvent Event) {
        App.popScreen();
    }

}
