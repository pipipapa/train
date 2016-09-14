package train.util;

import java.io.*;  

import javax.servlet.*;  
import javax.servlet.http.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Random;  
import java.awt.*;  
import java.awt.image.*;  
import javax.imageio.*;  

@Controller
@RequestMapping(value="/user")
public class SafeCode{
	//�����漴������  
    private Font getFont() {  
        Random random = new Random();  
        Font font[] = new Font[5];  
        font[0] = new Font("Ravie", Font.PLAIN, 24);  
        font[1] = new Font("Antique Olive Compact", Font.PLAIN, 24);  
        font[2] = new Font("Forte", Font.PLAIN, 24);  
        font[3] = new Font("Wide Latin", Font.PLAIN, 24);  
        font[4] = new Font("Gill Sans Ultra Bold", Font.PLAIN, 24);  
        return font[random.nextInt(5)];  
    }  
  
    @RequestMapping(value="/getSafeCode")
    protected void getSafeCode(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException {  
        // ������Ӧͷ Content-type����  
        resp.setContentType("image/jpeg");  
        // ������������������ҳ�治����  
        resp.setHeader("Pragma", "No-cache");  
        resp.setHeader("Cache-Control", "No-cache");  
        resp.setDateHeader("Expires", 0);  
  
        OutputStream os = resp.getOutputStream();  
        int width = 83, height = 30;  
        // ����ָ�����ߺ�BufferedImage����  
        BufferedImage image = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);  
  
        Graphics g = image.getGraphics(); // �û��ʻ���image��  
        Color c = g.getColor(); // ���浱ǰ���ʵ���ɫ�����껭�ʺ�Ҫ�ظ��ֳ�  
        g.fillRect(0, 0, width, height);  
          
  
        char[] ch = "abcdefghjkmnpqrstuvwxyz23456789".toCharArray(); // �漴�������ַ��� ������ i l(СдL) o��СдO�� 1������1��0(����0)  
        int length = ch.length; // �漴�ַ����ĳ���  
        String sRand = ""; // �����漴�������ַ���  
        Random random = new Random();  
        for (int i = 0; i < 4; i++) {  
            // ��������  
            g.setFont(getFont());  
            // �漴����0-9������  
            String rand = new Character(ch[random.nextInt(length)]).toString();  
            sRand += rand;  
            // ���������ɫ  
            g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));  
            g.drawString(rand, 20 * i + 6, 25);  
        }  
        //�����漴���ŵ�  
        for (int i = 0; i < 20; i++) {  
            int x1 = random.nextInt(width);  
            int y1 = random.nextInt(height);  
            g.drawOval(x1, y1, 2, 2);  
        }  
        g.setColor(c); // �����ʵ���ɫ�����û�ȥ  
        g.dispose();  
  
        //����֤���¼��session  
        req.getSession().setAttribute("safecode", sRand);  
        // ���ͼ��ҳ��  
        ImageIO.write(image, "JPEG", os);  
  
    }
}
