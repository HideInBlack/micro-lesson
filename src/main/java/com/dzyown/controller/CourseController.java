package com.dzyown.controller;


import com.dzyown.pojo.ChartCourse;
import com.dzyown.pojo.ChartLearnCourse;
import com.dzyown.pojo.Course;
import com.dzyown.pojo.MyCourse;
import com.dzyown.service.CourseService;
import com.dzyown.util.FrameGrabberKit;
import com.dzyown.util.LayuiUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class CourseController {

    /**
     * 从配置文件中取值
     */
    @Value("${uploadPath.video}")
    private String truePath;

    @Value("${uploadPath.cover}")
    private String coverPath;

    @Value("${dzy.url}")
    private String  localUrl;

    private String url ;

    @Autowired
    CourseService courseService;

    /**
     * 文件上传
     * @param file
     * @param uploadVoid
     * @param course
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/uploadFile")
    public Map<String, Object> uploadFile(@RequestParam("file") MultipartFile file,
                                          @RequestParam("uploadVoid")String uploadVoid,
                                          Course course,
                                          HttpSession session) {

        if (!"多".equals(uploadVoid)){//文件单个上传
            if(course.getTitle().equals("") || course.getAuthor().equals("") || course.getInfo().equals("") || course.getSchool().equals("")|| course.getType().equals("")){
                return LayuiUtil.setResultMap(1, "请先完善必须信息，才可创建课程！", "", 0);
            }
        }else if("多".equals(uploadVoid)){//多文件上传的默认设置
            course.setTitle(file.getOriginalFilename().substring(0, file.getOriginalFilename().lastIndexOf(".")));
            course.setAuthor("无名");
            course.setInfo("这是一个神秘的课程...");
            course.setSchool("未设置");
            course.setType("工学");//默认工学
        }

        int userId = (int) session.getAttribute("loginUser");

        //获取当前修改更新时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = (String) df.format(new Date());

        //判断文件是否为空
        if (file.isEmpty()) {
            return LayuiUtil.setResultMap(1, "文件不可为空！", "", 0);
        }
        // 获取文件名
        String fileName = file.getOriginalFilename();

        fileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + "_" + fileName;

        //加个时间戳，尽量避免文件名称重复
        String path = truePath + fileName;

        //创建文件路径
        File dest = new File(path);

        // 获取文件后缀名
        String fileNameExtension = fileName.substring(fileName.lastIndexOf(".") + 1);

        //判断文件是否已经存在
        if (dest.exists()) {
            return LayuiUtil.setResultMap(1, "文件已经存在！", "", 0);
        }

        //判断文件父目录是否存在
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdir();
        }

        try {
            //上传文件
            file.transferTo(dest); //保存文件
            url= localUrl +"video/" + fileName;

            if(fileNameExtension.equals("pdf")){
                course.setCoverPath(localUrl + "cover/file.png");
            }else{
            //视频封面图处理
            String newImgName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) +".jpg";
            String framefile = coverPath + newImgName;
            String imgUrlSave = localUrl + "cover/" +newImgName;//图片最终位置路径

            //视频截取封面图
            String imgUrl=FrameGrabberKit.getVedioImg(path, framefile, imgUrlSave);
            course.setCoverPath(imgUrlSave);
            }

            course.setPath(path);
            course.setUrl(url);
            course.setUploadId(userId);
            course.setUploadTime(time);

            //插入数据库
            int result= courseService.addCourse(course);
            if (result > 0) {
                return LayuiUtil.setResultMap(0, "课程成功创建，等待管理员审核", url, 1);
            }

        } catch (IOException e) {
            return LayuiUtil.setResultMap(1, "课程成功创建失败", "", 0);
        }

        return LayuiUtil.setResultMap(1, "课程成功创建失败", "", 0);
    }


    //获取登录作者用户的所有创作的课程
    @ResponseBody
    @RequestMapping(value="/getMyAllCourse")
    public Map<String, Object> getMyAllCourse(HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");
        List<Course> list = courseService.getAllCourse("","","",userId);
        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

    //获取所有的待批准的课程
    @ResponseBody
    @RequestMapping(value="/getNoPermitCourse")
    public Map<String, Object> getNoPermitCourse() {

        List<Course> list = courseService.getAllCourse("","","check",0);
        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

    //获取所有的待批准的，已批准的全部课程
    @ResponseBody
    @RequestMapping(value="/getAllCourse")
    public Map<String, Object> getAllCourse() {

        List<Course> list = courseService.getAllCourse("","","",0);
        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

    //搜索查询课程
    @ResponseBody
    @RequestMapping(value="/searchCourse")
    public Map<String, Object> searchCourse(@RequestParam(value = "keyWord") String keyWord) {

        List<Course> list = courseService.getAllCourse("",keyWord,"",0);
        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }
    //类型专栏
    @ResponseBody
    @RequestMapping(value="/typeCourse")
    public Map<String, Object> typeCourse(@RequestParam(value = "type") String type) {
        List<Course> list = courseService.getCourseByType(type);
        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

    //智能推荐
    @ResponseBody
    @RequestMapping(value="/recommend")
    public Map<String, Object> recommend(@RequestParam(value = "type") String type,HttpSession session) {
        List<Course> list = courseService.getCourseByType(type);

        int userId = (int) session.getAttribute("loginUser");
        MyCourse myCourse = new MyCourse();
        myCourse.setUserId(userId);

        //增强for循环操作list
        for(int i = 0; i<list.size() ;i++){
            myCourse.setCourseId(list.get(i).getId());
            MyCourse check = courseService.checkLearnCourse(myCourse);
            if (check != null && check.getDel() == 0){//正在学习，把学习的课程从list里删除
                list.remove(list.get(i));
                i--;
            }

        }

        if (list.size() > 2) {//判断list长度
            List<Course> newList = list.subList(0, 2);//取前2条数据
            list= newList;//返回新的list
        }

        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }


    //获取排名前八的热门课程
    @ResponseBody
    @RequestMapping(value="/getHotCourse")
    public Map<String, Object> getHotCourse() {

        List<Course> list = courseService.getAllCourse("hot","","",0);
        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

    //访问一个课程
    @ResponseBody
    @RequestMapping(value="/getOneCourse")
    public Map<String, Object> getOneCourse(@RequestParam(value = "id") int id) {

        Course course = courseService.getOneCourse(id);
        if (course != null) {
            courseService.addOneStudy(course.getId());
            return LayuiUtil.setResultMap(0, "获取成功", course, 1);
        }else{
            return LayuiUtil.setResultMap(1, "获取信息失败", "", 0);
        }
    }


    /**
     * 修改课程信息
     * @param course 1.批准 2.拒绝 3.修改信息 根据memo改变
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/updateCourse")
    public Map<String, Object> updateCourse(Course course) {

        int result = courseService.updateCourse(course);
        if (result>0){
            return LayuiUtil.setResultMap(0, "操作成功", "", 0);
        }else{
            return LayuiUtil.setResultMap(1, "发生错误，操作失败", "", 0);
        }

    }

    //我要学习此课程
    @ResponseBody
    @RequestMapping(value="/wantLearn")
    public Map<String, Object> wantLearn(MyCourse myCourse,HttpSession session) {

        //获取当前修改更新时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = (String) df.format(new Date());

        SimpleDateFormat dfMemo = new SimpleDateFormat("yyyy-MM-dd");
        String timeMemo = (String) dfMemo.format(new Date());

        int userId = (int) session.getAttribute("loginUser");
        myCourse.setUserId(userId);
        myCourse.setStartTime(time);
        myCourse.setMemo(timeMemo);
        MyCourse check = courseService.checkLearnCourse(myCourse);
        if (check != null){//核实是否学习
            if (check.getDel() == 1){//重新再次学习
                check.setStartTime(time);
                check.setMemo(timeMemo);
                //int result = courseService.deleteMyLearnCourse(check);
                int result = courseService.addMyLearnCourse(check);
                return LayuiUtil.setResultMap(0, "课程已成功再次收藏到学习清单", "", 0);
            }
            return LayuiUtil.setResultMap(1, "您已经对此课程进行学习，无需再次收藏学习", "", 0);
        }
        //没有学习，添加到学习
        int result = courseService.addMyLearnCourse(myCourse);
        if (result>0){
            return LayuiUtil.setResultMap(0, "操作成功，课程已成功收藏到学习清单", "", 0);
        }else{
            return LayuiUtil.setResultMap(1, "发生错误，操作失败", "", 0);
        }

    }

    //获取我学习的此课程
    @ResponseBody
    @RequestMapping(value="/getLearn")
    public Map<String, Object> getLearn(MyCourse myCourse,HttpSession session) {

        int userId = (int) session.getAttribute("loginUser");
        List<Course> courses = courseService.getMyLearnCourse(userId);
        return LayuiUtil.setResultMap(0, "操作成功", courses, courses.size());


    }
    //把课程移除学习清单
    @ResponseBody
    @RequestMapping(value="/deleteLearn")
    public Map<String, Object> deleteLearn(MyCourse myCourse) {

        int result = courseService.deleteMyLearnCourse(myCourse);
        if (result >0){
            return LayuiUtil.setResultMap(0, "移除成功", "",0);
        }else{
            return LayuiUtil.setResultMap(1, "请求出错，操作失败", "",0);
        }

    }

    /**
     * 删除课程
     * @param course
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/deleteCourse")
    public Map<String, Object> deleteCourse(Course course) {

        int result = courseService.deleteCourse(course);
        if (result>0){
            return LayuiUtil.setResultMap(0, "课程已成功删除", "", 0);
        }else{
            return LayuiUtil.setResultMap(1, "发生错误，删除失败", "", 0);
        }

    }

    //获取图表课程类型统计
    @ResponseBody
    @RequestMapping(value="/chartCourse")
    public Map<String, Object> chartCourse() {

        List<ChartCourse> list = courseService.chartCourse();

        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

    //获取图表课程类型统计
    @ResponseBody
    @RequestMapping(value="/chartLearnCourse")
    public Map<String, Object> chartLearnCourse(HttpSession session) {
        int userId = (int) session.getAttribute("loginUser");
        List<ChartLearnCourse> list = courseService.chartLearnCourse(userId);

        return LayuiUtil.setResultMap(0, "获取成功", list, list.size());

    }

}
