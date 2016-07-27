<%@ page import="java.util.Random" %>
<%@ page import="com.bestpay.utils.DateUtil" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="spf" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<head>
    <title>订单撤销</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Bootstrap -->
    <link type="text/css" href="<%=path %>/css/web/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css" rel="stylesheet">
        .he{height:20px}
    </style>
</head>

<body>
<div>
    <a href="/pages/index">返回</a>
</div>
<center>
    <br/>
    <form action="<%=basePath%>unioncashier/cancel" method="post" >
        <table style="text-align: right">
            <tr style="height: 25px">
                <td>
                    <span class="input-group-addon">接口名称</span>
                </td>
                <td>
                    <input type="text" class="form-control input-lg,he" id="service" name="service" value="unioncashier.trans.cancel"/>
                </td>
            </tr>
            <tr style="height: 25px">
                <td>
                    <span class="input-group-addon">版本号</span>
                </td>
                <td>
                    <input type="text" class="form-control input-lg,he" id="version" name="version" value="V1.0"/>
                </td>
            </tr>
            <tr style="height: 25px">
                <td>
                    <span class="input-group-addon">签名方式</span>
                </td>
                <td>
                    <input type="text" class="form-control input-lg,he" id="signType" name="signType" value="MD5"/>
                </td>
            </tr>
            <tr style="height: 25px">
                <td>
                    <span class="input-group-addon">商户号</span>
                </td>
                <td>
                    <input type="text" class="form-control input-lg,he" id="merchantId" name="merchantId" value="20000000"/>
                </td>
            </tr>
            <tr style="height: 25px">
                <td>
                    <span class="input-group-addon">商户原交易订单号</span>
                </td>
                <td>
                    <input type="text" class="form-control input-lg,he" id="outTradeNo" name="outTradeNo" value=""/>
                </td>
            </tr>
            <tr style="height: 25px">
                <td>
                    <span class="input-group-addon">商户撤销订单号</span>
                </td>
                <td>
                    <input type="text" class="form-control input-lg,he" id="outCancelNo" name="outCancelNo" value="<%=com.bestpay.utils.DateUtil.getCurrent()%>"/>
                </td>
            </tr>
            <tr style="height: 25px">
                <td>
                    <span class="input-group-addon">公共业务扩展信息</span>
                </td>
                <td>
                    <input type="text" class="form-control input-lg,he" id="extendParams" name="extendParams" value="<%=com.bestpay.utils.DateUtil.getCurrent()%>"/>
                </td>
            </tr>
        </table>
        <p>
            <button type="submit" class="btn btn-success btn-lg">提交</button>
        </p>
        </span>
    </form>
</center>
</body>
</html>