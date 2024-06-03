<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>侧边展开导航栏</title>
    <!-- 引入字体图标 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="../css/25.css">
    <style>
        *{
            /* 初始化 取消内外边距 */
            margin: 0;
            padding: 0;
        }
        body{
            /* 溢出隐藏 */
            overflow: hidden;
        }
        .navbar{
            /* 相对定位 */
            position: relative;
            /* 100%窗口宽度 */
            width: 100vw;
            display: flex;
        }
        .main{
            flex: 1;
            height: calc(100vh - 43px);
            position: relative;
            top: 43px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #checkbox{
            display: none;
        }
        .navbar label{
            position: absolute;
            top: 0;
            left: 70px;
            width: 100%;
            height: 43px;
            font-size: 30px;
            color: #5a738e;
            background-color: #ededed;
            padding-left: 20px;
            border: 1px solid #d9dee4;
            cursor: pointer;
            /* 加个动画过渡 */
            transition: all 0.5s;
        }
        .navbar ul{
            list-style: none;
            width: 70px;
            /* 100%窗口高度 */
            height: 100vh;
            background-color: #2a3f54;
            transition: all 0.5s;
            overflow: hidden;
        }
        .navbar ul li{
            height: 70px;
            margin-bottom: 10px;
        }
        .navbar ul li:first-child{
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 10px;
        }
        .navbar ul li:first-child img{
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }
        .navbar ul li:first-child span{
            /* 先把文字隐藏起来 */
            display: none;
            color: #fff;
            /* 文字禁止换行 */
            white-space: nowrap;
            padding-left: 10px;
        }
        .navbar ul li a{
            display: flex;
            justify-content: center;
            align-items: center;
            /* 垂直排列 */
            flex-direction: column;
            width: 100%;
            height: 100%;
            color: #d1d1d1;
            text-decoration: none;
        }
        .navbar ul li a i{
            font-size: 25px;
            margin-bottom: 10px;
        }
        .navbar ul li a span{
            font-size: 12px;
            white-space: nowrap;
        }
        .navbar ul li a:hover{
            color: #fff;
            background-color: #35495d;
        }
        /* :checked选择器是判断复选框是否被选中 */
        /* +是相邻兄弟选择器，找到input的下一个兄弟label */
        .navbar input:checked + label{
            left: 200px;
        }
        /* ~也是兄弟选择器，但它可以找到隔了几代的兄弟 */
        .navbar input:checked ~ ul{
            width: 200px;
        }
        .navbar input:checked ~ ul li:first-child{
            /* 将居中改为开头对齐 */
            justify-content: flex-start;
        }
        .navbar input:checked ~ ul li:first-child span{
            /* 文字显示 */
            display: block;
        }
        .navbar input:checked ~ ul li a{
            flex-direction: row;
            justify-content: flex-start;
        }
        .navbar input:checked ~ ul li a i{
            font-size: 18px;
            margin: 0 15px 0 30px;
        }
        .navbar input:checked ~ ul li a span{
            font-size: 14px;
        }
        #a1{width: 30%;height: 90px;}
        #a2{width: 55%;height: 40px;text-align: right;padding-top: 35px;z-index: 1;}
        #t1{width: 100%;height: 500px;}
        #table{width: 100%;text-align: center;border-color: #6495ED;border: 0px solid #6495ED;}
        .table{width: 80%;float: left;height: 400px;}
        #addinfo{width: 400px;height: 320px; text-align: left;float: left;box-shadow: 0px 0px 35px 0px #6495ED;
            z-index: 3;background-color: white;position: absolute;left: 25%;top: 18%;border-radius: 27px 0px 27px 27px;}
        th{border: 1px solid ghostwhite;}
        th{height: 40px;background-color: #6495ED;}
        td{border: 1px solid floralwhite;height: 30px;}
        tr:hover{background-color: #999999;height: 37px;}
        #td{border: 3px solid #000000;width: 60px;height: 40px;background-color: #6495ED;}
        #add{width: 140px;height: 40px;text-decoration: none;background-color: #6495ED;border: 3px solid #000000;
            color: #F0F8FF;padding:10px 10px 10px 10px;margin-right: 10%;border-radius: 6px 6px 6px 6px;}
        #add:hover{color: #000000;}
        select{height: 40px;border: 2px solid #000000;border-radius: 3px 3px 3px 3px;
            margin-right: 40px;margin-left: 20px;
        }
        .a10 .ss1{height: 40px;border: 2px solid #000000;border-radius: 3px 3px 3px 3px;width: 80px;
            margin-right: 40px;margin-left: 20px;font-size: 16px;
        }
        #form1{font-size: larger;padding-left: 20px;text-align: center;}
        input{width: 65%;height: 25px;border-radius: 6px 6px 6px 6px;margin-top: 10px;}
        #btn_update,#btn_ext,#btn_add{width: 120px;height: 40px;border-radius: 6px 6px 6px 6px;margin:0 auto;background-color: #6495ED;}
        #btn_add{color: white;}
        #btn_ext{color: white;}
        #btn_add :hover{color: #999999;}
        #btn_ext :hover{color: antiquewhite;}
        #xiu{border-radius: 3px 3px 3px 3px;border: 1px solid bisque;padding: 5px;box-shadow: 0px 0px 30px 0px #DCDCDC;background-color: coral;}
        #xiu:hover{color: #BD0A01;}
        #xiu2{border-radius: 3px 3px 3px 3px;border: 1px solid bisque;padding: 5px;box-shadow: 0px 0px 30px 0px #DCDCDC;background-color:springgreen;}
        #xiu2:hover{color: #BD0A01;}
        #h4{width: 94%;float: left;padding-top: 15px;font-size: larger;height: 30px;padding-left: 0px;border-radius: 0px 0px 50% 50%/0px 0px 40px 40px;background-color: #6495ED;}}
        #h3{width: 5%;float: right;height: 20px;padding:0;text-align: right;margin: 0 auto;}
        /* #h2{width: 100%;float: left;height: 40px;border-radius: 0px 0px 50% 50%/0px 0px 30px 30px;background-color: #6495ED;} */
        #span1{width: 20px;font-size: x-large;line-height: 10px;}
        #h3 :hover{background-color: #DCDCDC;}
        #aa2{float: left;width: 15%;}
        #aa3{width: 80%;height: 320px;float: left;}
        #shu{height: 320px;}
        .a10 .a9{width: 70px;height: 20px;background-color: #fff;position: absolute;left:200px;bottom:0px;}
        .a10{width: 100%;height: 50px;margin-top: 0px;background-color:#dcdcdc;float: left;font-size:larger;padding-left:20px;}
        .dao{border-radius: 3px 3px 3px 3px;box-shadow: 0px 0px 30px 0px #DCDCDC;background: white;width: 70px;height:40px;float:left;margin-right:20px;}
    </style>
</head>

<body>
<div class="navbar">
    <input type="checkbox" id="checkbox">
    <label for="checkbox">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </label>
    <ul>
        <li>
            <img src="img/OIP-C.jpg" alt="">
            <span>欢迎您!${user.username}</span>
        </li>
        <li>
            <a href="student/findAll?start=0&end=5&size=0">
                <i class="fa fa-home" aria-hidden="true"></i>
                <span>学生信息</span>
            </a>
        </li>
        <li>
            <a href="class/gettotal">
                <i class="fa fa-sitemap" aria-hidden="true"></i>
                <span>班级情况</span>
            </a>
        </li>
        <li>
            <a href="javascript:void(0)">
                <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                <span>课程情况</span>
            </a>
        </li>
        <li>
            <a href="grade/findAll">
                <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                <span>成绩情况</span>
            </a>
        </li>
        <li>
            <a  href="user_login.jsp" id="back">
                <i class="fa fa-th-large" aria-hidden="true"></i>
                <span>退出</span>
            </a>
        </li>
    </ul>
    <div class="main">


        <h1>这是首页面</h1>

    </div>
</div>
</body>

</html>

<script>

</script>