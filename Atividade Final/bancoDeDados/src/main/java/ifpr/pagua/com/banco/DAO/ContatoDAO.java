package ifpr.pagua.com.banco.DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import ifpr.pagua.com.banco.models.Contato;

public class ContatoDAO extends ConnectionFactory {

    public void insert(Contato novoContato) {
        try {
            conexao = getConnection();
            String sql = "INSERT INTO atividade_final_agenda (nome) VALUES (?);";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, "Zefinho");
            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void delete(Contato novoContato) {
    }

    public void update(Contato novoContato) {
    }

    public void list() {
    }

}
