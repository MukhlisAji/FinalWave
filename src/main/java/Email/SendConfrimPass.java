/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Email;

import com.TimeOver.Controller.EmployeeController;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.InternetHeaders;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.swing.text.InternationalFormatter;
import jbcrypt.BCrypt;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;

/**
 *
 * @author tikamhrdk
 */
public class SendConfrimPass {

   
    private static String email;
    private static String enkrippass;
    private static String name;
    private static String nik;
    private static String password;

    public static String getPassword() {
        return password;
    }

    public static void setPassword(String password) {
        SendConfrimPass.password = password;
    }

    public static String getNik() {
        return nik;
    }

    public static void setNik(String nik) {
        SendConfrimPass.nik = nik;
    }

    public static String getName() {
        return name;
    }

    public static void setName(String name) {
        SendConfrimPass.name = name;
    }

    

    public static String getEmail() {
        return email;
    }

    public static void setEmail(String email) {
        SendConfrimPass.email = email;
    }

    public static String getEnkrippass() {
        return enkrippass;
    }

    public static void setEnkrippass(String enkrippass) {
        SendConfrimPass.enkrippass = enkrippass;
    }

    public static void setEnkrippassnik(String nik) {
        String pass = BCrypt.hashpw(nik, BCrypt.gensalt());
        System.out.println(pass);
    }
//    public static String getEnkrippass(String nik) {
//        String pass = BCrypt.hashpw(nik, BCrypt.gensalt());
//        return pass;
//    }
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
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(SendConfrimPass.getEmail()));
            message.setSubject("Overtime Confirmation [" + SendConfrimPass.getNik() + " - " + SendConfrimPass.getName() + "]");
            if (confirm) {
                text = text = "Hello " + SendConfrimPass.getName() + "<br>"
                        + "Your NIK is " + SendConfrimPass.getNik() + "<br>"
                        + "your new account has been made, please click this link to validation <a href = 'http://localhost:8086/ChangePassword/" + SendConfrimPass.getPassword() + "'>Reset Password </a>";
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


