package lab4;

import org.springframework.stereotype.Service;

@Service("emailService")
public class EmailService implements MessageService {
    @Override
    public void sendMessage(String message, String recipient) {
        System.out.println("📧 Email sent to " + recipient + " with message: " + message);
    }
}
