<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<li class="layui-nav-item">
    <a class="" href="javascript:;"> 题库 </a>
    <dl class="layui-nav-child">
        <dd><a href="tiku_list.jsp" target="main_self_frame">题库查询</a></dd>
    </dl>
</li>
<li class="layui-nav-item">
    <a class="" href="javascript:;"> 考试信息管理 </a>
    <dl class="layui-nav-child">
        <dd><a href="jieguo_list_kaoshiren.jsp" target="main_self_frame">结果查询</a></dd>
        <dd><a href="kaoshijieguo_list_kaoshiren.jsp" target="main_self_frame">考试结果查询</a></dd>
    </dl>
</li>

<li class="layui-nav-item">
    <a class="" href="javascript:;"> 错题管理 </a>
    <dl class="layui-nav-child">
        <dd><a href="cuoti_list_kaoshiren.jsp" target="main_self_frame">错题查询</a></dd>
    </dl>
</li>

<li class="layui-nav-item">
    <a class="" href="javascript:;"> 个人中心 </a>
    <dl class="layui-nav-child">
        <dd><a href="xuesheng_updtself.jsp" target="main_self_frame">修改个人资料</a></dd>
        <dd><a href="mod.jsp" target="main_self_frame">修改密码</a></dd>
    </dl>
</li>
