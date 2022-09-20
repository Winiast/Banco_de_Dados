package ifpr.pagua.com.banco.models;

public class Telefones {

    private int codigo_telefone;
    private int telefone;

    public Telefones(int codigo_telefone, int telefone) {
        this.codigo_telefone = codigo_telefone;
        this.telefone = telefone;
    }

    public int getCodigo_telefone() {
        return codigo_telefone;
    }

    public void setCodigo_telefone(int codigo_telefone) {
        this.codigo_telefone = codigo_telefone;
    }

    public int getTelefone() {
        return telefone;
    }

    public void setTelefone(int telefone) {
        this.telefone = telefone;
    }

}
