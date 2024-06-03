<%--
  Created by IntelliJ IDEA.
  User: 30130
  Date: 2023/12/19
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>学生信息</title>
    <style type="text/css">
        #a1{width: 30%;height: 90px;float: left;}
        #a2{width: 55%;height: 40px;float: left;text-align: right;padding-top: 35px;z-index: 1;}
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
<div id="a1">
    <h2><font style="color: #6495ED;">~~学生信息~~</font></h2>
</div>
<div id="a3">

</div>
<div id="a2">
    <form action="/javaeetest_war/student/findByName" method="post">
        你要查询的姓名:<input type="text" name="name">
        <input type="submit" value="查询" width="100px">
    </form>
</div>
<div class="table" >
    <table border="1" style="text-align:center" id="table" cellspacing="0">
        <tr>
            <th>名字</th>
            <th>年龄</th>
            <th>性别</th>
            <th>专业</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.name}</td>
                <td>${student.age}</td>
                <td>${student.sex}</td>
                <td>${student.major}</td>
                <td><a style="color:#6495ED;cursor: pointer;" href="/javaeetest_war/student_update.jsp?id=${student.id}" id="xiu">修改<a>&nbsp<a style="color:chocolate;cursor:pointer;" href="/javaeetest_war/student/delete?id=${student.id}" id="xiu2">删除</a></td>
            </tr>
        </c:forEach>
    </table>

    <a href="/javaeetest_war/student/findAll?start=${start}&end=${end}&size=5" style="left: 100px">下五个数据</a>
</div>
<div id="addinfo" style="display: none;" title="点击鼠标以固定，滑动鼠标拖动">
    <!-- <div id="aa2">
        <img src="img/书本.jpg" align="right" height="400px" id="shu">
        </div> -->
    <!-- <div id="aa3"> -->
    <form action="/javaeetest_war/student/addStudent" method="post" id="form1">
        <center>
            <div id="h4"> <b>~~请添加信息~~</b></div></center><div id="h3">
        <span style=" color: black;cursor:pointer;" onclick="hideAddInput()" id="span1">×</span>
    </div> <br>
        <input type="text" id="xueyuan" placeholder="请输入姓名" name="name"/><br><!--限制用户名只能用英文 下划线 或数字-->
        <input type="text" id="banji" placeholder="请输入年龄"  name="age"/><br>
        <input type="text"  id="xuehao" placeholder="请输入性别" name="sex"/><br>
        <input type="text" id="name" placeholder="请输入专业" name="major"/><br>
        <input type="text"  placeholder="请输入班级编号" name="classId"/><br>
        <div><input type="submit" value="提交">
            <!-- <input type="button" value="取消" onclick="hideAddInput()" id="btn_ext"> --></div>
    </form>
    <!-- </div> -->
</div>

<!-- <div class="a10">
    <div class="dao"><span><b>共12页</b></span></div>
    <div class="dao">
    <select name="" class="ss1">
        <option value=""><b>9条/页</b></option>
    </select></div>
    <span>❮</span> 1  2 <span id="">❯</span>
</div> -->
<script type="text/javascript">
    window.onload = function(){
        var box = document.getElementById("addinfo");
        var box1=document.getElementById("h4");
        var box2=document.getElementById("aa2")
        box1.onmousedown = function(){
            document.onmousemove = function(event){
                event = event || window.event;
                var left = event.clientX;
                var top = event.clientY;
                box.focus();
                box.style.left = left +"px";
                box.style.top = top +"px";

                document.onmouseup = function(){
                    document.onmousemove = null;
                    document.onmouseup = null;
                };
                //        };document.onmousedown= function(){
                //                document.onmousemove = null;
                //                document.onmouseup = null;
                // };
            };
        };
    };
    var row = 0 ; //定义全局行数用于修改
    var reg_name = /^((\w*\d\w*[a-z]\w*)|(\w*[a-z]\w*\d\w*))$/i; //用于判断用户名格式
    var reg_chinese = /^[\u0391-\uFFE5]+$/ ; //用于判断姓名格式
    var reg_pass = /^((\w*\d\w*[a-z]\w*)|(\w*[a-z]\w*\d\w*))$/i;//用于判断密码格式
    // var reg_tel = /^((13[0-9])|147|(15[0-35-9])|180|182|(18[5-9])|19[5-9])[0-9]{8}$/;
    //----获取行号-----
    function getRow(r){
        var i=r.parentNode.parentNode.rowIndex;
        return i ;
    }
    //----获取行号-----

    //----删除某一行-----
    function delRow(r){
        document.getElementById('table').deleteRow(getRow(r));
    }
    //----删除某一行-----

    //----清除添加信息框的内容-----
    function cleanAddInput(){
        document.getElementById('xueyuan').value='';
        document.getElementById('banji').value='';
        document.getElementById('xuehao').value='';
        document.getElementById('name').value='';
        document.getElementById('phone').value='';

    }
    //----清除添加信息框的内容-----

    //----显示添加信息框-----
    function showAddInput(){
        document.getElementById('addinfo').style="display:block-inline" ;
        document.getElementById('btn_add').style="display:block-inline" ;
        document.getElementById('btn_update').style="display:none" ;
        cleanAddInput();
    }

    //----显示添加信息框-----

    //----隐藏添加信息框-----
    function hideAddInput(){
        document.getElementById('addinfo').style="display:none" ;

    }
    //----隐藏添加信息框-----

    //----判断输入框的信息是否符合要求-----
    function judge(){
        //根据id获取表单信息
        var xueyuan= document.getElementById('xueyuan').value;
        var banji = document.getElementById('banji').value;
        var xuehao = document.getElementById('xuehao').value;
        var name = document.getElementById('name').value;
        var phone = document.getElementById('phone').value;
        var judge = true ; //用于判断表单信息是否符合
        if(xueyuan==''){
            judge = false ;
            alert('请输入学院名');
        }else if(banji==''){
            judge = false ;
            alert('请输入班级');
        }else if(name==''){
            judge = false ;
            alert('请输入姓名');
        }else if(xuehao==''){
            judge = false ;
            alert('请输入学号');
        }else if(phone==''){
            judge = false ;
            alert('请输入电话');
        }else if(phone.length<3){
            judge = false ;
            alert('请正确输入电话');
        }
        return judge ;
    }
    //----判断输入框的信息是否符合要求-----

    //----新增信息的插入方法-----
    function insertInfo(){
        //根据id获取表单信息
        var arr = new Array();
        arr[0] = document.getElementById('xueyuan').value;
        arr[1] = document.getElementById('banji').value;
        arr[2] = document.getElementById('xuehao').value;
        arr[3] = document.getElementById('name').value;
        arr[4] = document.getElementById('phone').value;
        arr[5] ="<a style='text-align:center;color:#6495ED;cursor:pointer;' onclick='updateRow(this);' id='xiu'>修改</a>&nbsp<a style='text-align:center;color:chocolate;cursor:pointer;' onclick='delRow(this);'id='xiu2'>删除</a>";
        var x = document.getElementById('table').insertRow(1); //获取第一行对象

        for(var i=0;i<arr.length;i++){
            x.insertCell(i).innerHTML = arr[i] ; //用循环把每个数据插入第一行的每一列
        }

    }
    //----新增信息的插入方法-----

    //----新增信息-----
    function addInfo(){

        if(judge()==true){
            alert('添加成功');
            insertInfo(); //执行插入
            hideAddInput(); //隐藏添加信息框

        }else{
            alert('添加失败');
        }
    }
    //----新增信息-----


    //----根据行号修改信息-----
    function updateRow(r){
        row = getRow(r); //把该行号赋值给全局变量
        showAddInput(); //显示修改表单
        //提交按钮替换
        document.getElementById('btn_add').style="display:none" ;
        document.getElementById('btn_update').style="display:block-inline" ;
        insertInputFromQuery(queryInfoByRow(row));

    }
    //----根据行号修改信息-----


    //----根据行号查信息----
    function queryInfoByRow(r){

        var arr = new Array();
        for(var m=0 ; m<6;m++){
            arr[m] = document.getElementById('table').rows[row].cells[m].innerText;
        }
        return arr ; //返回该行数据

    }
    //----根据行号查信息----

    //----把查询到的信息放入修改的表单里----
    function insertInputFromQuery(arr){
        document.getElementById('xueyuan').value = arr[0];
        document.getElementById('banji').value = arr[1];
        document.getElementById('xuehao').value = arr[2];
        document.getElementById('name').value = arr[3];
        document.getElementById('phone').value = arr[4];

    }
    //----把查询到的信息放入修改的表单里----


    function updateInfo(){
        if(judge()==true){
            alert('修改成功');
            document.getElementById('table').deleteRow(row);//删除原来那行
            insertInfo(); //插入修改后的值
            hideAddInput(); //隐藏添加模块
        }else{
            alert('修改失败');
            hideAddInput();
        }
    }
</script>
</body>
</html>

