
package br.com.infox.dal;
import java.sql.*;

public class ModuloConexao {
    //Método responsavel por estabelecer a conexao com o banco 
     public static Connection conector() {
      java.sql.Connection conexao = null;
      // a linha abaixo "chama" o driver que importei para a biblioteca
      String driver = "com.mysql.jdbc.Driver";
      // armazenando informacoes referente ao banco de dados
      
      String url="jdbc:mysql://localhost:3306/dbinfox";
      String user="root";
      String password="";
      //estabelecendo a conexao com o banco 
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            System.out.println(e);
          return null;
        } 
        
    }
 
}
