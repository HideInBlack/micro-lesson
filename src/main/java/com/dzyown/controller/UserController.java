package com.dzyown.controller;



import com.dzyown.pojo.User;
import com.dzyown.service.UserService;
import com.dzyown.util.LayuiUtil;
import com.dzyown.util.SendEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class UserController {

    //注入业务层，controller调用业务层
    @Autowired
    UserService userService;


    /**
     * 查询所有的申请创作的用户
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/userList")
    public Map<String, Object> listUser() {
        List<User> list = userService.listUser();
        return LayuiUtil.setResultMap(0, "请求成功", list, list.size());
    }

    /**
     * 用户注册
     *
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/userRegister")
    public Map<String, Object>  register(User user ,@RequestParam(value = "sureCode") String sureCode ,HttpSession session) throws Exception{

        if(!sureCode.equals((String) session.getAttribute("sureCodes"))) {
            return LayuiUtil.setResultMap(1, "邮箱验证码不一致，请重新输入！", "",0);
        }

        //获取当前的注册时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String time = (String) df.format(new Date());//);// new Date()为获取当前系统时间

        //下面设置默认值
        user.setRegisterTime(time);

        int result = userService.insertUser(user);
        if (result > 0) {
            return LayuiUtil.setResultMap(0, "注册成功，欢迎登录", "",0);
        } else {
            return LayuiUtil.setResultMap(1, "请求出错", "",0);
        }


    }

    /**
     * 用户登录
     *
     * @param user
     * @param model
     * @param session
     * @param modelMap
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/userToLogin")
    public Map<String, Object> toLogin(User user,
                          Model model,
                          HttpSession session,
                          RedirectAttributesModelMap modelMap) throws Exception {

        User loginUser = userService.checkUserLogin(user);

        if (loginUser != null) {

            session.setAttribute("loginUser", loginUser.getId());
            session.setAttribute("loginRole", loginUser.getRole());
            session.setAttribute("loginName",loginUser.getUserName());
            modelMap.addFlashAttribute("msg", "登录成功，欢迎 " + loginUser.getUserName() + " 用户！");
            modelMap.addFlashAttribute("userName",  loginUser.getUserName());

            if(loginUser.getRole() == 0){//admin页面
                return LayuiUtil.setResultMap(0, "登录成功，尊敬的管理员！ <br>欢迎来到星系微课堂的后台管理系统...", "/indexWeb",0);
            }else if(loginUser.getRole() == 2){//教师用户页面
                return LayuiUtil.setResultMap(0, "登录成功，尊敬的UP主用户！ <br>欢迎您来到星系微课堂,您可以在下面选择进入到教师管理界面还是APP应用界面!", "/indexWeb",6);
            }
            //登录成功，进入到Android用户端
            return LayuiUtil.setResultMap(0, "登录成功，欢迎来到星系微课堂！<br>您即将进入到课堂首页...", "/index",0);

        } else {
            model.addAttribute("msg", "邮箱或者密码错误,请重新登录！");
            return LayuiUtil.setResultMap(1, "邮箱或者密码错误,请重新登录！", "", 0);
        }
    }

    @Autowired
    SendEmail sendEmail;
    /**
     * 发送验证码到邮箱
     * @return
     */
    @ResponseBody
    @RequestMapping("/sendSureCode")
    public Map<String, Object> sendSureCode(@RequestParam(value = "email") String email ,HttpSession session) {
        String sureCode = LayuiUtil.getRandNum(6);
        sendEmail.sendSimpleMail(email,"星系微课堂","欢迎注册星系微课堂，您的验证码是：" + sureCode);
        //验证码存到session上
        session.setAttribute("sureCodes", sureCode);
        return LayuiUtil.setResultMap(0, "已发送验证码到您的邮箱，请耐心等待", "", 0);
    }


    /**
     * 退出登录
     */
    @RequestMapping("/userLogout")
    public String logout(HttpSession session, RedirectAttributesModelMap modelMap) {
        session.invalidate();
        modelMap.addFlashAttribute("msg", "退出成功，可重新登录！");
        return "redirect:/login";//redirect重定向干净利落，不能用model参数
    }

    /**
     * 获得用户个人信息
     *
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/getUserDetail")
    public Map<String, Object> getUserDetail(HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");
        User user = userService.getUserById(userId);
        if (user == null) {
            return LayuiUtil.setResultMap(1, "请求失败", "", 0);
        } else {
            return LayuiUtil.setResultMap(0, "请求成功", user, 0);
        }


    }

    /**
     * 获取身份
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/getRole")
    public Map<String, Object> getRole(HttpSession session) {

        int userRole = (int) session.getAttribute("loginRole");
        String userName = (String) session.getAttribute("loginName");
        Map<String, Object> map=new HashMap();
        map.put("userRole",userRole);
        map.put("userName",userName);

        return LayuiUtil.setResultMap(0, "请求成功", map, 1);


    }

    /**
     * 个人权限信息的修改
     * @param user
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateUser")
    public Map<String, Object> updateUser(User user, HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");

        if ("".equals(user.getMemo())||user.getMemo() == null){//用户改了role
            user.setId(userId);
            session.setAttribute("loginRole",user.getRole());
        }
        //外面是admin改role
        int result = userService.updateUser(user);
        if (result > 0) {
            return LayuiUtil.setResultMap(0, "操作成功", user, 0);
        } else {
            return LayuiUtil.setResultMap(1, "请求失败", "", 0);
        }


    }

    /**
     * 个人信息的编辑，或者是修改密码
     * @param user
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateInfoUser")
    public Map<String, Object> updateInfoUser(User user, HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");

        user.setId(userId);
        int result = userService.updateInfoUser(user);
        if (result > 0) {
            return LayuiUtil.setResultMap(0, "操作成功", user, 0);
        } else {
            return LayuiUtil.setResultMap(1, "请求失败", "", 0);
        }


    }

}
