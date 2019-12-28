<%--
  User: 月影
  Date: 2019/12/9 15:21
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    pageContext.setAttribute("bml",request.getContextPath());
%>
<html>
    <head>
        <title>添加界面</title>
        <%-- 引入JQ和Bootstrap --%>
        <script src="${bml}/js/jquery-3.4.1.min.js"></script>
        <link href="${bml}/css/bootstrap.min.css" rel="stylesheet">
        <script src="${bml}/js/bootstrap.min.js"></script>
        <link href="${bml}/css/style.css" rel="stylesheet">
    </head>
    <body>
    <div class="addDIV">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">增加学生</h3>
            </div>
            <div class="panel-body">
                <form method="post" action="${bml}/addActor" role="form">
                    <table class="addTable">
                        <tr>
                            <td>姓氏：</td>
                            <td><input type="text" name="first_name" id="first_name" placeholder="请在这里输入姓氏"></td>
                        </tr>
                        <tr>
                            <td>名字：</td>
                            <td><input type="text" name="last_name" id="last_name" placeholder="请在这里输入名字"></td>
                        </tr>
                        <tr>
                            <td>日期：</td>
                            <td><input type="date" name="last_update" id="last_update" placeholder="请在这里输入修改日期"></td>
                        </tr>
                        <tr class="submitTR">
                            <td colspan="3" align="center">
                                <button type="submit" class="btn btn-success">提 交</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    </body>
</html>
