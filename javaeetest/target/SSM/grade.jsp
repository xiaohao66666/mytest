<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>成绩信息</title>
    <style type="text/css">
        #a1{width: 30%;height: 90px;float: left;}
        #a2{width: 55%;height: 40px;float: left;text-align: right;padding-top: 35px;}
        #t1{width: 100%;height: 500px;}
        #table{width: 100%;text-align: center;border-color: #6495ED;border: 0px solid #6495ED;}
        .table{width: 80%;float: left;}
        #addinfo{width: 400px;height: 320px; text-align: left;float: left;box-shadow: 0px 0px 35px 0px #6495ED;
            z-index: 3;background-color: white;position: absolute;left: 25%;top: 18%;border-radius: 27px 0px 27px 27px;}
        th{border: 1px solid ghostwhite;}
        th{height: 40px;background-color: #6495ED;}
        td{border: 1px solid floralwhite;height: 30px;}
        tr:hover{background-color: #999999;height: 37px;}
        #td{border: 3px solid #000000;width: 60px;height: 40px;background-color: #6495ED;}
        #add{width: 140px;height: 40px;text-decoration: none;background-color: #6495ED;border: 3px solid #000000;
            color: #F0F8FF;padding:10px 10px 10px 10px;margin-right: 10%;}
        #add:hover{color: #000000;}
        select{height: 40px;border: 2px solid #000000;border-radius: 3px 3px 3px 3px;
            margin-right: 40px;margin-left: 20px;
        }
        #form1{font-size: larger;padding-left: 20px;}
        input{width: 85%;height: 25px;border-radius: 6px 6px 6px 6px;margin-top: 10px;}
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
    </style>
</head>
<body>
<div id="a1">
    <h2>~~成绩信息~~</h2>
</div>
<div id="a3">

</div>
<div id="a2">
    <form action="/javaeetest_war/grade/findByName" method="post">
        你要查询的姓名:<input type="text" name="name" style="width: 100px">
        <input type="submit" value="查询" style="width: 100px;">
    </form>

</div>
<div class="table" >
    <table border="1" style="text-align:center" id="table" cellspacing="0">
        <tr>
            <th>学生姓名</th>
            <th>数学成绩</th>
            <th>英语成绩</th>
            <th>计算机成绩</th>
        </tr>
          <c:forEach var="grade" items="${grades}">
              <tr>
                  <td>${grade.name}</td>
                  <td>${grade.math}</td>
                  <td>${grade.english}</td>
                  <td>${grade.computer}</td>
              </tr>
          </c:forEach>



    </table>
</div>

<script type="text/javascript">
    var row = 0 ; //定义全局行数用于修改
    var reg_name = /^((\w*\d\w*[a-z]\w*)|(\w*[a-z]\w*\d\w*))$/i; //用于判断用户名格式
    var reg_chinese = /^[\u0391-\uFFE5]+$/ ; //用于判断姓名格式
    var reg_pass = /^((\w*\d\w*[a-z]\w*)|(\w*[a-z]\w*\d\w*))$/i;//用于判断密码格式
    var reg_s=/^[1-9]{1,2}\d?$/;
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
        document.getElementById('s1').value='';
        document.getElementById('s2').value='';
        document.getElementById('s3').value='';
        document.getElementById('name').value='';
        document.getElementById('bid').value='';
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
        var s1= document.getElementById('s1').value;
        var s2 = document.getElementById('s2').value;
        var name = document.getElementById('name').value;
        var s3 = document.getElementById('s3').value;
        var bid=document.getElementById('bid').value;
        var judge = true ; //用于判断表单信息是否符合
        if(s1==''){
            judge = false ;
            alert('请输入第三列成绩');
        }else if(s2==''){
            judge = false ;
            alert('请输入第四列成绩');
        }else if(name==''){
            judge = false ;
            alert('请输入姓名');
        }else if(bid==''){
            judge = false ;
            alert('请输入编号');
        }else if(s3==''){
            judge = false ;
            alert('请输入第五列成绩');
        }else if(!reg_s.test(s1)|!reg_s.test(s2)|!reg_s.test(s3))
        {
            judge = false ;
            alert('请输入正确成绩信息(1-100)');
        }else if(s1>100|s2>100|s3>100)
        {			 judge = false ;
            alert('请输入一百以内成绩');
        }
        return judge ;
    }
    //----判断输入框的信息是否符合要求-----

    //----新增信息的插入方法-----
    function insertInfo(){
        //根据id获取表单信息
        var arr = new Array();
        arr[0] = document.getElementById('bid').value;
        arr[1] = document.getElementById('name').value;
        arr[2] = document.getElementById('s1').value;
        arr[3] = document.getElementById('s2').value;
        arr[4] = document.getElementById('s3').value;
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
        for(var m=0; m<6;m++){
            arr[m] = document.getElementById('table').rows[row].cells[m].innerText;
        }
        return arr ; //返回该行数据

    }
    //----根据行号查信息----

    //----把查询到的信息放入修改的表单里----
    function insertInputFromQuery(arr){
        document.getElementById('bid').value = arr[0];
        document.getElementById('name').value = arr[1];
        document.getElementById('s1').value = arr[2];
        document.getElementById('s2').value = arr[3];
        document.getElementById('s3').value = arr[4];

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
