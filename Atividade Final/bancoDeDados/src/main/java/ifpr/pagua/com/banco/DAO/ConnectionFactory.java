package ifpr.pagua.com.banco.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * ConnectionFactory
 */
public class ConnectionFactory {
    Connection conexao = null;
    String url = "jdbc:mysql://wagnerweinert.com.br/tads21_gustavo";
    String user = "tads21_gustavo";
    String password = "tads21_gustavo";

    public Connection getConnection() {
        if (conexao == null) {

            try {
                conexao = DriverManager.getConnection(url, user, password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return conexao;
        } else {
            return conexao;
        }

    }
}
