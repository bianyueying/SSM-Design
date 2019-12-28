package bml.controller;

import bml.entity.UserLogin;
import bml.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * User: 月影
 * Date: 2019/12/10 11:35
 */
@Controller
public class LoginController {

    final UserService userService;
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/123")
    public String bml(@RequestParam("username")String name,@RequestParam("password")String password, Model model){
        UserLogin login = userService.getpwdbyname(name);
        String success = login.getPassword();
        if (name == null || password == null){
            model.addAttribute("error","请输入账号密码");
            return "";
        }
        else if (!password.equals(success)){
            model.addAttribute("error","密码错误");
            return "";
        }
        else {
            return "success";
        }
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value = "username",defaultValue = "123")String name){
        UserLogin login = userService.getpwdbyname(name);
        String password = login.getPassword();
        System.out.println(password);
        return "success";
    }
}
