<%--
  User: 月影
  Date: 2019/12/9 20:44
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 绝对路径 --%>
<%
    pageContext.setAttribute("bml",request.getContextPath());
%>
<style>
    div{
        margin:10px;
    }
</style>

<html>
    <head>
        <%-- 引入JQ和Bootstrap --%>
        <script src="${bml}/js/jquery-3.4.1.min.js"></script>
        <link href="${bml}/css/bootstrap.min.css" rel="stylesheet">
        <script src="${bml}/js/bootstrap.min.js"></script>
        <link href="${bml}/css/style.css" rel="stylesheet">
        <title>修改界面</title>
    </head>
    <body>
        <div class="addDIV">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">修改电影</h3>
                </div>
                <div class="panel-body">
                    <form method="post" action="${bml}/updateFilm" role="form">
                        <table class="addTable">

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1">电影名</span>
                                <input type="text" name="title" class="form-control" value="${ymg.title}" aria-describedby="basic-addon1">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon2">简介</span>
                                <input type="text" name="description" class="form-control" value="${ymg.description}" aria-describedby="basic-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon3">放映时间</span>
                                <input type="text" name="release_year" class="form-control" value="${ymg.release_year}" aria-describedby="basic-addon3">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon4">语言ID</span>
                                <input type="text" name="language_id" class="form-control" value="${ymg.language_id}" aria-describedby="basic-addon4">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon5">租赁期限</span>
                                <input type="text" name="rental_duration" class="form-control" value="${ymg.rental_duration}" aria-describedby="basic-addon5">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon6">租赁率</span>
                                <input type="text" name="rental_rate" class="form-control" value="${ymg.rental_rate}" aria-describedby="basic-addon6">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon7">电影时长</span>
                                <input type="text" name="length" class="form-control" value="${ymg.length}" aria-describedby="basic-addon7">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon8">更改日期</span>
                                <input type="text" name="last_update" class="form-control" value="${ymg.last_update}" aria-describedby="basic-addon8">
                            </div>

                            <tr class="submitTR">
                                <td colspan="2" align="center">
                                    <input type="hidden" name="id" value="${ymg.id}">
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
