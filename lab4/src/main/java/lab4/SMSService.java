package lab4;

import org.springframework.stereotype.Service;

@Service("smsService")
public class SMSService implements MessageService {
    @Override
    public void sendMessage(String message, String recipient) {
        System.out.println("📱 SMS sent to " + recipient + " with message: " + message);
    }
}
