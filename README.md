# 基于Android微课设计与实现

> Micro Lesson

## 一.客户端功能（Android）

1.登录 注册功能

2.视频微课

3.文档微课(pdf之类)

4.课程推荐，课程搜索，课程选择（选择后就要加入到正在进行）

5.评论功能（评论回复功能？交流讨论）

6.做笔记功能（笔记点赞功能，笔记拉跨功能）

7.通知提示功能？弹窗

8.模拟考试功能（章节练习，仿真实训）？

9.个性化课程正在进行

10.主题论坛求助讨论？

11.**我的**：我的收藏，我的笔记，我的评价

## 二.管理员端功能（PC）

1.登录功能

2.课程分类？课程添加，课程删除

3.考试试卷制作功能？

4.微课视频的上传压缩与解压？

## 三.数据库表

1.用户表：micro_user(id,username,sex,email,password ,register_time ,motto,del,memo,role)<可以有学者用户，和教师用户，和超级管理员>

2.微课课程表：micro_course(id , title ,info ,school ,author,type,upload_id ,upload_time ,memo,del )

3.评论表：micro_remark(id , course_id ,user_id ,content ,remark_time ,memo ,del)

4.笔记表：micro_note(id , course_id ,user_id ,content ,note_time ,memo ,del)

5.笔记收藏表：micro_note_collect((id , note_id ,user_id ,collect_time ,memo ,del)

6.笔记点赞表：micro_note_good(id , note_id ,user_id ,good_time ,memo ,del)

7.课后习题表：micro_course_train(id , course_id ,type ,title ,selection ,answer ,memo,del)