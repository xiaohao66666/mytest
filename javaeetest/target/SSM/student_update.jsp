<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
    <head>
        <!-- 指定字符集 -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>修改学生信息</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </head>
    <body style="background-image: url('img/login-bg.jpg');">
    <span>${param.id}</span>
        <div class="container" style="width: 400px;">
        <h3 style="text-align: center;">修改学生信息</h3>
        <form action="student/update" method="post">
            <!--  隐藏域 提交id-->
            <input type="hidden" name="id" value="${param.id}">

          <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" class="form-control" id="name" name="name"   placeholder="请输入姓名" />
          </div>



          <div class="form-group">
            <label for="age">年龄：</label>
            <input type="text" class="form-control"  id="age"  name="age" placeholder="请输入年龄" />
          </div>

            <div class="form-group">
                <label for="age">性别：</label>
                <input type="text" class="form-control"  id="sex"  name="sex" placeholder="请输入年龄" />
            </div>
          <div class="form-group">
            <label for="classno">专业：</label>
            
            <input type="text" id="classno" class="form-control"  name="major" placeholder="请输入班级信息"/>
          
          </div>

          <div class="form-group">
            <label for="phone">班级编号</label>
            <input type="text" id="phone" class="form-control"  name="classId" placeholder="请输入电话号码"/>
          </div>


             <div class="form-group" style="text-align: center">
                <input class="btn btn-primary" type="submit" value="提交" />
                <input class="btn btn-default" type="reset" value="重置" />
             </div>
        </form>
        </div>
    </body>
</html>
<script>

</script>