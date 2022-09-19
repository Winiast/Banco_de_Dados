package ifpr.pagua.com.banco.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ifpr.pagua.com.banco.models.Contato;
import ifpr.pagua.com.banco.models.Nomes;

public class NomeDAO extends ConnectionFactory {

    public void insert(String novoNome) {
        try {
            conexao = getConnection();
            String sql = "INSERT INTO atividade_final_agenda (nome) VALUES (?);";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, novoNome);
            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        // INSERT INTO atividade_final_agenda (nome) VALUES ('TESTE');
        // INSERT INTO atividade_final_email (email_contato, codigo_email) VALUES
        // ('teste@gmail.com');
        // INSERT INTO atividade_final_telefone (telefone) VALUES ('419999991');
    }

    public void delete(Contato novoContato) {
    }

    public void update(Contato novoContato) {
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

    // public ArrayList<Email> pesquisa(PreparedStatement statement) throws
    // SQLException {
    // ArrayList<Email> emails = new ArrayList<Email>();

    // statement.execute();
    // ResultSet resultSet = statement.getResultSet();

    // while (resultSet.next()) {
    // int codigo = resultSet.getInt("codigo_agenda");
    // String email = resultSet.getString("email");

    // emails.add(new Email(codigo, email));
    // }
    // statement.close();
    // return emails;
    // }

}
