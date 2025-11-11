package lab5;

import org.springframework.stereotype.Component;

@Component
public class DependentBean {

    private final MyBean myBean;

    public DependentBean(MyBean myBean) {
        this.myBean = myBean;
    }

    public void performTask() {
        System.out.println("DependentBean: Using MyBean to perform task.");
        myBean.doWork();
    }
}
