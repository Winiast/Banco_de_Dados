package ifpr.pagua.com.banco.models;

public class Nomes {

    private int codigo_nome;
    private String nome;

    public Nomes(int codigo_nome, String nome) {
        this.codigo_nome = codigo_nome;
        this.nome = nome;
    }

    public int getCodigo_nome() {
        return codigo_nome;
    }

    public void setCodigo_nome(int codigo_nome) {
        this.codigo_nome = codigo_nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        String str = "";
        str += "Codigo: " + codigo_nome + " | " + "Nome: " + nome + "\n";
        return str;
    }

}
