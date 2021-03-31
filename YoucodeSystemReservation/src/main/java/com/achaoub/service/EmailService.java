package com.achaoub.service;

import org.springframework.stereotype.Repository;

@Repository
public interface EmailService {
	void envoyerEmail(String to, String subject, String text);
}
