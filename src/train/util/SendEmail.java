package train.util;

import java.util.Date;  
import java.util.Properties;  
  
import javax.mail.Message;  
import javax.mail.MessagingException;  
import javax.mail.Session;  
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;  
  
  
/** 
 *  
 * @author Qixuan.Chen 
 */  
public class SendEmail {  
      
    public static final String HOST = "smtp.163.com";  
    public static final String PROTOCOL = "smtp";     
    public static final int PORT = 465;
    public static final String FROM = "18078354043@163.com";//�����˵�email  
    public static final String PWD = "1D09A9EC80DF0FE1";//����������  
      
    /** 
     * ��ȡSession 
     * @return 
     */  
    private static Session getSession() {
    	
        Properties props = new Properties();
        props.put("mail.smtp.host", HOST);//���÷�������ַ  
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.transport.protocol" , PROTOCOL);//����Э��  
        props.put("mail.smtp.port", PORT);//���ö˿�  
        props.put("mail.smtp.auth" , "true");  
        
        Session session = Session.getInstance(props);
        return session;  
    }  
      
    public static void send(String toEmail , String content) throws AddressException, MessagingException {  
        Session session = getSession();  
        
        System.out.println("send:"+content);  
        // Instantiate a message  
            Message msg = new MimeMessage(session);  
   
            //Set message attributes  
        msg.setFrom(new InternetAddress(FROM));  
        InternetAddress[] address = {new InternetAddress(toEmail)};  
        msg.setRecipients(Message.RecipientType.TO, address);  
        msg.setSubject("�˺ż����ʼ�");  
        msg.setSentDate(new Date());  
        msg.setContent(content , "text/html;charset=utf-8");  
   
            //Send the message  
        Transport trans = session.getTransport();
        trans.connect(FROM,PWD);
        trans.sendMessage(msg, msg.getAllRecipients()); 
    }  
  
}  
