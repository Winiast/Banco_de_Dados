module ifpr.pagua.com.banco {
    requires javafx.controls;
    requires javafx.fxml;

    opens ifpr.pagua.com.banco to javafx.fxml;
    exports ifpr.pagua.com.banco;
}
