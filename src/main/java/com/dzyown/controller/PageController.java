package com.dzyown.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面跳转分配容器
 */
@Controller//这个是返回thymeleaf的
public class PageController {


    /**
     * 首页面的跳转
     * @return
     */
    @RequestMapping({"/","/index"})
    public String index(){
        return "views/index";
    }

    @RequestMapping("/indexWeb")
    public String indexWeb(){
        return "views/indexWeb";
    }

    @RequestMapping("/login")
    public String login(){
        return "views/pages/login";
    }

    @GetMapping({"/loginLoss"})
    public String loginLoss() {
        return "views/pages/loginLoss";
    }

    @RequestMapping("/home")
    public String home(){
        return "views/pages/home";
    }

    @RequestMapping("/mine")
    public String mine(){
        return "views/pages/mine";
    }

    @RequestMapping("/doing")
    public String doing(){
        return "views/pages/doing";
    }

    @RequestMapping("/chart")
    public String chart(){
        return "views/pages/chart";
    }

    /**
     *管理员的三个页面
     */
    @GetMapping({"/manageUser"})
    public String manageUser() {
        return "views/pages/admin/manageUser";
    }

    @GetMapping({"/manageWork"})
    public String manageWork() {
        return "views/pages/admin/manageWork";
    }

    @GetMapping({"/checkWork"})
    public String checkWork() {
        return "views/pages/admin/checkWork";
    }

    /**
     * 教师页面
     */
    @GetMapping({"/myWork"})
    public String myWork() {
        return "views/pages/teacher/myWork";
    }

    @GetMapping({"/uploadCourse"})
    public String uploadCourse() {
        return "views/pages/teacher/uploadCourse";
    }

    @GetMapping({"/seeMyWork"})
    public String seeMyWork() {
        return "views/pages/teacher/seeMyWork";
    }

    @GetMapping({"/makeTrain"})
    public String makeTrain() {
        return "views/pages/teacher/makeTrain";
    }

    @GetMapping({"/mp4"})
    public String mp4() {
        return "views/pages/learnVideo";
    }

    @GetMapping({"/search"})
    public String search() {
        return "views/pages/search";
    }

    @GetMapping({"/type"})
    public String type() {
        return "views/pages/type";
    }

    /**
     * mine界面跳转
     */
    @GetMapping({"/myNote"})
    public String myNote() {
        return "views/pages/mine/myNote";
    }

    @GetMapping({"/myPassword"})
    public String myPassword() {
        return "views/pages/mine/myPassword";
    }

    @GetMapping({"/mySelf"})
    public String mySelf() {
        return "views/pages/mine/mySelf";
    }

    @GetMapping({"/myCollect"})
    public String myCollect() {
        return "views/pages/mine/myCollect";
    }


}
