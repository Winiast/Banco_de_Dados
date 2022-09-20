package ifpr.pagua.com.banco.models;

public class Emails {

    private int codigo_email;
    private String email;

    public Emails(int codigo_email, String email) {
        this.codigo_email = codigo_email;
        this.email = email;
    }

    public int getCodigo_email() {
        return codigo_email;
    }

    public void setCodigo_email(int codigo_email) {
        this.codigo_email = codigo_email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
