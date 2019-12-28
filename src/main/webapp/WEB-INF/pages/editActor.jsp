<%--
  User: 月影
  Date: 2019/12/9 14:53
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    pageContext.setAttribute("bml",request.getContextPath());
%>
<html>
    <head>
        <title>编辑修改界面</title>
        <%-- 引入JQ和Bootstrap --%>
        <script src="${bml}/js/jquery-3.4.1.min.js"></script>
        <link href="${bml}/css/bootstrap.min.css" rel="stylesheet">
        <script src="${bml}/js/bootstrap.min.js"></script>
        <link href="${bml}/css/style.css" rel="stylesheet">
    </head>
    <body>
    <div class="editDIV">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">编辑Actor</h3>
            </div>
            <div class="panel-body">
                <form method="post" action="${bml}/updateActor" role="form">
                    <table class="editTable">
                        <tr>
                            <td>姓氏:</td>
                            <td><input type="text" name="first_name" id="first_name" value="${actor.first_name}"
                                       placeholder="请在这里输入姓氏"></td>
                        </tr>
                        <tr>
                            <td>名字:</td>
                            <td><input type="text" name="last_name" id="last_name" value="${actor.last_name}" placeholder="请在这里输入名字">
                            </td>
                        </tr>
                        <tr>
                            <td>日期：</td>
                            <td><input type="date" name="last_update" id="last_update" value="${actor.last_update}" placeholder="请在这里输入更改日期"></td>
                        </tr>

                        <tr class="submitTR">
                            <td colspan="2" align="center">
                                <input type="hidden" name="id" value="${actor.id}">
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
