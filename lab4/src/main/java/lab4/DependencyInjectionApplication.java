package lab4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class DependencyInjectionApplication {
    public static void main(String[] args) {
        ApplicationContext context =
                new AnnotationConfigApplicationContext(AppConfig.class);

        NotificationService notificationService = context.getBean(NotificationService.class);
        notificationService.notifyUser("Hello, World!", "user@example.com");
    }
}
