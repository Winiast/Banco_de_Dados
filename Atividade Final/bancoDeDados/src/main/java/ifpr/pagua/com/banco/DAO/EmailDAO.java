package ifpr.pagua.com.banco.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ifpr.pagua.com.banco.models.Emails;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;

public class EmailDAO extends ConnectionFactory {

    public void insert(int codigoContato, String emailContato) {
        try {
            conexao = getConnection();
            String sql = "INSERT INTO atividade_final_email (codigo_email, email) VALUES (?,?);";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, codigoContato);
            stmt.setString(2, emailContato);
            stmt.execute();
            Alert alerta = new Alert(AlertType.CONFIRMATION, "Cadastrado com sucesso!");
            alerta.show();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public void delete(String emailParaExcluir) throws SQLException {
        String sql = "DELETE FROM atividade_final_email WHERE email = ?";
        PreparedStatement stmt = getConnection().prepareStatement(sql);
        stmt.setString(1, emailParaExcluir);
        stmt.execute();
        Alert alerta = new Alert(AlertType.CONFIRMATION, "Deletado com sucesso!");
        alerta.show();
    }

    public void update() {
    }

    public ArrayList<Emails> list() throws SQLException {
        ArrayList<Emails> emailsAtuais = new ArrayList<>();
        String sql = "SELECT * FROM atividade_final_email;";
        PreparedStatement stmt = getConnection().prepareStatement(sql);
        stmt.execute();
        ResultSet resultSet = stmt.getResultSet();
        while (resultSet.next()) {
            Emails novoEmail = new Emails(resultSet.getInt("codigo_email"),
                    resultSet.getString("email"));
            emailsAtuais.add(novoEmail);
        }
        stmt.close();
        return emailsAtuais;
    }

}
