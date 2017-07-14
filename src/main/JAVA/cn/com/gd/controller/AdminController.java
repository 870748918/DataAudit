package cn.com.gd.controller;

import cn.com.gd.pojo.Admin;
import cn.com.gd.serviceimpl.AdminLoginImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * Created by AMD on 2017/7/06 0006.
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Resource
    private AdminLoginImpl adminLogin;
    @RequestMapping(value = "/login")
    public ModelAndView login (@ModelAttribute Admin admin, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        ModelAndView mav = new ModelAndView();
        Admin sessionAdmin  = adminLogin.login(admin);
        if(sessionAdmin == null) {
            mav.setViewName("login");
            mav.addObject("msg","用户名或密码错误");
            mav.addObject("admin",admin);
            return mav;
        }
        mav.setViewName("main");
        request.getSession().setAttribute("SessionAdmin",sessionAdmin);
        String UserID = sessionAdmin.getUserID();
        UserID = URLEncoder.encode(UserID,"utf-8");
        Cookie cookie = new Cookie("UserID",UserID);
        //设置cookie的最大存活时间
        cookie.setMaxAge(1000*60*60*24*10);
        response.addCookie(cookie);
        return  mav;
    }
}
