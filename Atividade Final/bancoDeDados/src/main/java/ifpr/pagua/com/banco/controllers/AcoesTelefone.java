package ifpr.pagua.com.banco.controllers;

import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

import ifpr.pagua.com.banco.App;
import ifpr.pagua.com.banco.DAO.TelefoneDAO;
import ifpr.pagua.com.banco.models.Telefones;
import javafx.event.ActionEvent;
import javafx.fxml.Initializable;
import javafx.scene.control.ListView;

public class AcoesTelefone implements Initializable {

    private ListView<Telefones> telefoneContato;

    public TelefoneDAO telefoneDao = new TelefoneDAO();

    @Override
    public void initialize(URL arg0, ResourceBundle arg1) {
        try {
            telefoneContato.getItems().clear();
            telefoneContato.getItems().addAll(telefoneDao.list());
            // TODO Auto-generated method stub

        } catch (Exception e) {
            // TODO: handle exception
        }

    }

    public void cadastraEmail(ActionEvent e) {
        App.pushScreen("CADASTRA_TELEFONE");
    }

    public void deletaEmail(ActionEvent e) throws SQLException {
        telefoneDao.delete(telefoneContato.getSelectionModel().getSelectedItem().getTelefone());
        telefoneContato.getItems().clear();
        telefoneContato.getItems().addAll(telefoneDao.list());
    }

    public void editaEmail(ActionEvent e) {

    }

    public void voltarTela(ActionEvent e) {
        App.popScreen();
    }

}
