package lab5;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class BeanInjection {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context =
                new AnnotationConfigApplicationContext(AppConfig.class);

        MyBean myBean = context.getBean(MyBean.class);
        myBean.doWork();

        DependentBean dependentBean = context.getBean(DependentBean.class);
        dependentBean.performTask();

        context.close();
    }
}
