package lab4;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class NotificationService {
    private final MessageService messageService;

    public NotificationService(@Qualifier("smsService") MessageService messageService) {
        this.messageService = messageService;
    }

    public void notifyUser(String message, String recipient) {
        messageService.sendMessage(message, recipient);
    }
}
