package com.javaone.contorller;

import com.javaone.service.Login;
import com.javaone.service.Register;
import com.javaone.service.impl.LoginImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
public class UserAction {

    @RequestMapping("/login.action")
    public String login(String name, String pwd) {
        if (name != null && pwd != null && !"".equals(name) && !"".equals(pwd)) {
            ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring.xml");
            Login login = applicationContext.getBean("loginImpl", Login.class);
            Boolean loginB = login.login(name, pwd);
            if (loginB) {
                return "cg";
            }
        }
        return "sb";
    }

    @RequestMapping("/register.action")
    public String register(String name, String pwd, String pwds, String email) {
        if (pwd != null && pwds != null && name != null && email != null && !"".equals(name) && !"".equals(pwd) && !"".equals(pwds) && !"".equals(email)) {
            if (pwd.equals(pwds)) {
                ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring.xml");
                Register register = applicationContext.getBean("registerImpl", Register.class);
                Boolean i = register.register(name, pwd, email);
                if (i) {
                    return "zccg";
                }
            }
        }
        return "zcsb";
    }
}
