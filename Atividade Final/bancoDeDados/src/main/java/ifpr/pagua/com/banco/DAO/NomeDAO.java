package ifpr.pagua.com.banco.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ifpr.pagua.com.banco.models.Nomes;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class NomeDAO extends ConnectionFactory {

    public void insert(String novoNome) {
        try {
            conexao = getConnection();
            String sql = "INSERT INTO atividade_final_agenda (nome) VALUES (?);";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, novoNome);
            stmt.execute();
            Alert alerta = new Alert(AlertType.CONFIRMATION, "Cadastrado com sucesso!");
            alerta.show();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // INSERT INTO atividade_final_agenda (nome) VALUES ('TESTE');
        // INSERT INTO atividade_final_email (email_contato, codigo_email) VALUES
        // ('teste@gmail.com');
        // INSERT INTO atividade_final_telefone (telefone) VALUES ('419999991');
    }

    public void delete(int codigoParaExcluir) throws SQLException {
        String sql = "DELETE FROM atividade_final_agenda WHERE codigo_agenda = ?";
        PreparedStatement stmt = getConnection().prepareStatement(sql);
        stmt.setInt(1, codigoParaExcluir);
        stmt.execute();
        Alert alerta = new Alert(AlertType.CONFIRMATION, "Deletado com sucesso!");
        alerta.show();
    }

    public void update() {
    }

    public ArrayList<Nomes> list() throws SQLException {
        ArrayList<Nomes> nomesAtuais = new ArrayList<>();
        String sql = "SELECT * FROM atividade_final_agenda;";
        PreparedStatement stmt = getConnection().prepareStatement(sql);
        stmt.execute();
        ResultSet resultSet = stmt.getResultSet();
        while (resultSet.next()) {
            Nomes novoNome = new Nomes(resultSet.getInt("codigo_agenda"), resultSet.getString("nome"));
            nomesAtuais.add(novoNome);
        }
        stmt.close();
        return nomesAtuais;
    }

}
