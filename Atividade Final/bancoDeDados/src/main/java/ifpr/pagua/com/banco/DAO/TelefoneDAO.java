package ifpr.pagua.com.banco.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ifpr.pagua.com.banco.models.Telefones;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class TelefoneDAO extends ConnectionFactory {

    public void insert(int codigoTelefone, int telefone) {
        try {
            conexao = getConnection();
            String sql = "INSERT INTO atividade_final_telefone (codigo_telefone, codigo_foreing) VALUES(?,?);";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, telefone);
            stmt.setInt(2, codigoTelefone);
            stmt.execute();
            Alert alerta = new Alert(AlertType.CONFIRMATION, "Cadastrado com sucesso!");
            alerta.show();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public void delete(int telefoneParaExcluir) throws SQLException {
        // String sql = "DELETE FROM atividade_final_email WHERE email = ?";
        // PreparedStatement stmt = getConnection().prepareStatement(sql);
        // stmt.setString(1, emailParaExcluir);
        // stmt.execute();
        // Alert alerta = new Alert(AlertType.CONFIRMATION, "Deletado com sucesso!");
        // alerta.show();
    }

    public void update() {

    }

    public ArrayList<Telefones> list() throws SQLException {
        ArrayList<Telefones> telefonesAtuais = new ArrayList<>();
        String sql = "SELECT * FROM atividade_final_telefone;";
        PreparedStatement stmt = getConnection().prepareStatement(sql);
        stmt.execute();
        ResultSet resultSet = stmt.getResultSet();
        while (resultSet.next()) {
            Telefones novoTelefone = new Telefones(resultSet.getInt("telefone"), resultSet.getInt("codigo_telefone"));
            telefonesAtuais.add(novoTelefone);
        }
        stmt.close();
        return telefonesAtuais;
    }
}
