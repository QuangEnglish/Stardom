package com.devpro.javaweb23.controller.administrator;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AttachmentEmailExampleController {

    @Autowired
    public JavaMailSender javaMailSender;
    @Autowired
    MailSender mailSender;

    @RequestMapping("/admin/send-email")
    public String sendAttachmentEmail(@RequestParam("to") String to, 
    								@RequestParam("subject") String subject,
    								@RequestParam("content")String content) 
    	throws MessagingException {

    	 SimpleMailMessage message = new SimpleMailMessage();
         
         message.setTo(to);
         message.setSubject(subject);
         message.setText(content);

         // Send Message!
         this.javaMailSender.send(message);

         return "administrator/GuiMailKhachHang";
    }
    
}
