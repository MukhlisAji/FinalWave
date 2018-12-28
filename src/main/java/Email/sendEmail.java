/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Email;

import java.io.IOException;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;

/**
 *
 * @author Mukhlish
 */
public class sendEmail {

    public void sent(boolean confirm) {

        try {
            String text = "";
            Properties properties = new Properties();
            properties.put("mail.smtp.host", "smtp.gmail.com");
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.port", "465");//default port smptp
            final String username = "bccamp.21@gmail.com";
            final String password = "!Bootcamp2018";
            Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            }
            );
            session.setDebug(true);

            MimeMessage message = new MimeMessage(session);

            message.setFrom(new InternetAddress("bccamp.21@gmail.com"));
            String email = "";
            message.setRecipient(Message.RecipientType.TO, new InternetAddress("mukhlish.purnomo@gmail.com"));
            message.setSubject("Overtime Confirmation");
            if (confirm) {
                text = "Hello <br>"
                        + "Congratulations, your request overtime has been approved, <a href = 'http://localhost:8086/'>Login</a>";
                System.out.println(text);
            } else {
                text = "Hello <br> "
                        + "Sorry, your overtime request has been denied. please recheck your <a href = 'http://localhost:8086/'>application</a>";
                System.out.println(text);
            }
            message.setContent(text, "text/html; charset=utf-8");

            Transport.send(message);
        } catch (MessagingException ex) {
            ex.printStackTrace();
        }
    }

}
