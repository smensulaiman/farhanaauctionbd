package com.farhana.manager;

import com.farhana.db.QueryHelper;
import com.farhana.model.ProductModel;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class Manager {

    public static void sendMail(String from, String to, String subject, String message) throws EmailException {
        SimpleEmail email = new SimpleEmail();
        email.setHostName("smtp.gmail.com");
        email.setAuthentication(from, "123456");
        email.addTo(to, to);
        email.setFrom(from, "Me");
        email.setSubject("Test message");
        email.setMsg(message);
        email.send();
    }

    public void getDemoProducts(List<ProductModel> productModels) {
        try {
            QueryHelper queryHelper = new QueryHelper();
            productModels.addAll(queryHelper.getAllProducts());
        } catch (SQLException ex) {
            Logger.getLogger(Manager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
    }
}
