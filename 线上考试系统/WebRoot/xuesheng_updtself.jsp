<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>



<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
<script src="js/layer/layer.js"></script>

<div style="padding: 10px">


    <% if( request.getSession().getAttribute("username") == null || "".equals( request.getSession().getAttribute("username") ) ){ %>
    <script>
        alert('对不起,请您先登陆!');
        location.href='login.jsp';
    </script>
    <%
        return;
    } %>


<%
    
    // 获取当前用户的进行修改
    HashMap mmm = new CommDAO().getmaps("xuehao"
    , (String)request.getSession().getAttribute("username") , "xuesheng");

    String updtself="1";


    %>








<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑学生:
        </div>
        <div class="panel-body">
            <form action="xuesheng.jsp?a=update" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">学号<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写学号" remote="factory/checkno.jsp?checktype=update&id=<%= mmm.get("id") %>&table=xuesheng&col=xuehao" data-msg-remote="内容重复了" id="xuehao" name="xuehao" value="<%= Info.html(mmm.get("xuehao")) %>"/>                                            
        </div>
    </div>
</div>
                                                                            <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">姓名<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写姓名" id="xingming" name="xingming" value="<%= Info.html(mmm.get("xingming")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">性别</label>
        <div class="col-sm-8">
            
                                                    <select class="form-control class_xingbie5" data-value="<%= Info.html(mmm.get("xingbie")) %>" id="xingbie" name="xingbie" style="width:250px">
<option value="男">男</option>
<option value="女">女</option>

</select>
<script>
$(".class_xingbie5").val($(".class_xingbie5").attr("data-value"))</script>
                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">学科<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <select class="form-control class_xueke6" data-value="<%= Info.html(mmm.get("xueke")) %>" data-rule-required="true" data-msg-required="请填写学科" id="xueke" name="xueke" style="width:250px">
<% 
 List<HashMap> select = new CommDAO().select("SELECT * FROM xueke ORDER BY id desc"); 
 %>
<%  for(HashMap m:select){  %>
<option value="<%= m.get("id") %>"><%= m.get("xuekemingcheng") %></option>
<% } %>

</select>
<script>
$(".class_xueke6").val($(".class_xueke6").attr("data-value"))</script>
                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">班级<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <select class="form-control class_banji7" data-value="<%= Info.html(mmm.get("banji")) %>" data-rule-required="true" data-msg-required="请填写班级" id="banji" name="banji" style="width:250px">
<% 
 select = new CommDAO().select("SELECT * FROM banji ORDER BY id desc"); 
 %>
<%  for(HashMap m:select){  %>
<option value="<%= m.get("id") %>"><%= m.get("banjimingcheng") %></option>
<% } %>

</select>
<script>
$(".class_banji7").val($(".class_banji7").attr("data-value"))</script>
                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">手机<span style="color: red;">*</span></label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" data-rule-required="true" data-msg-required="请填写手机" phone="true" data-msg-phone="请输入正确手机号码" id="shouji" name="shouji" value="<%= Info.html(mmm.get("shouji")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">邮箱</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" email="true" data-msg-email="请输入有效邮件地址" id="youxiang" name="youxiang" value="<%= Info.html(mmm.get("youxiang")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">身份证</label>
        <div class="col-sm-8">
            
                                                    <input type="text" class="form-control" style="width:150px;" idcard="true" data-msg-email="请输入有效身份证号码" id="shenfenzheng" name="shenfenzheng" value="<%= Info.html(mmm.get("shenfenzheng")) %>"/>                                            
        </div>
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2">头像</label>
        <div class="col-sm-8">
            
                                                    <div class="input-group" style="width:250px">
    <input type="text" class="form-control" id="touxiang" name="touxiang" value="<%= Info.html(mmm.get("touxiang")) %>"/>

    <span class="input-group-btn"><button type="button" class="btn btn-default" onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=touxiang'})">
    上传图片
</button></span>
</div>                                            
        </div>
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="width: 120px;min-height:18px;text-align: right" class="col-sm-2"> </label>
        <div class="col-sm-8">
            
                                            <input name="id" value="<%= mmm.get("id") %>" type="hidden"/>
                                                <input name="referer" value="?" type="hidden"/>
                        <input name="updtself" value="<%= updtself %>" type="hidden"/>
                                        
                    
                    <button type="submit" class="btn btn-primary" name="Submit">
    提交
</button>
                    <button type="reset" class="btn btn-default" name="Submit2">
    重置
</button>

                
        </div>
    </div>
</div>
            
<!--form标签结束--></form>
        </div>
    </div>

<!-- container定宽，并剧中结束 --></div>





<script>
    $(function () {
        $('#form1').validate();
    });
</script>



</div>
<%@ include file="foot.jsp" %>
