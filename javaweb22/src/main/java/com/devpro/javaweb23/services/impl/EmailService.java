package com.devpro.javaweb23.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.devpro.javaweb23.model.Email;
import com.devpro.javaweb23.services.BaseService;


@Service
public class EmailService extends BaseService<Email>{

    @Autowired
    private JavaMailSender javaMailSender;
	@Override
	protected Class<Email> clazz() {
		return Email.class;
	}

	public void sendEmailToAllUsers(String toAddress, String subject, String content) {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom("hquanganh12345@gmail.com");
            message.setTo(toAddress);
            message.setSubject(subject);
            message.setText(content);
            javaMailSender.send(message);
    }

}
