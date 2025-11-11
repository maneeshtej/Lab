package lab5;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
@ComponentScan("lab5")
public class AppConfig {

    @Bean(initMethod = "init", destroyMethod = "destroy")
    @Scope("singleton")
    public MyBean myBean() {
        return new MyBean();
    }
}
