<%--
  User: 月影
  Date: 2019/12/10 10:23
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    pageContext.setAttribute("bml", request.getContextPath());
%>
<html>
<head>
    <title>展示界面</title>
    <%-- 引入JQ和Bootstrap --%>
    <script src="${bml}/js/jquery-3.4.1.min.js"></script>
    <link href="${bml}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${bml}/js/bootstrap.min.js"></script>
    <link href="${bml}/css/style.css" rel="stylesheet">
    <style type="text/css">
        #div0{margin-left: 100px;margin-right: 100px;margin-top: -40px}
        #div1{margin-right: 8px}
        #div2{margin-right: 8px}
        #div3{margin-right: 8px}
        #div4{margin-right: 8px}
        #div5{margin-right: 8px}
    </style>
</head>
<body>
<div id="div0" class="row">
    <table class="table table-striped table-bordered table-hover table-condensed">
        <h1>城市国家对应表 - 共 ${lqz.total} </h1>

        <div id="div1" class="btn-group">
            <a class="btn btn-success" href="${bml}/listAllCity">SSM课程设计</a>
        </div>

        <div id="div2" class="btn-group">
            <a class="btn btn-success" href="#">没有添加</a>
        </div>
        <div id="div3" class="btn-group">
            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">菜单选择<span class="caret"></span></button>
            <ul class="dropdown-menu" role="menu">
                <li role="presentation">
                    <a href="${bml}/listAll">演员表单</a>
                </li>
                <li role="presentation">
                    <a href="${bml}/listAllFilms">电影表单</a>
                </li>
                <li role="presentation">
                    <a href="${bml}/listAllCity">城市列表</a>
                </li>
            </ul>
        </div>
        <div id="div4"class="btn-group">
            <a class="btn btn-info" href="${bml}/toUpload">文件上传</a>
        </div>
        <div id="div5"class="btn-group">
            <a class="btn btn-danger" href="#">退出登录(待定)</a>
        </div>
        <div style="height:15px"></div>

        <thead>
        <tr class="success">
            <th>城市ID</th>
            <th>城市</th>
            <th>城市时间</th>
            <th>国家ID</th>
            <th>国家</th>
            <th>国家时间</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${lqz.list}" var="city" >
            <tr>
                <td>${city.city_id}</td>
                <td>${city.city}</td>
                <td>${city.last_update}</td>
                <td>${city.country.country_id}</td>
                <td>${city.country.country}</td>
                <td>${city.country.last_update}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<nav class="pageDIV">
    <ul class="pagination pagination-lg">
        <li><a href="listAllCity?pn=1"><span>首页</span></a></li>
        <li><a href="listAllCity?pn=${lqz.prePage}"><span>上一页</span></a></li>
        <li>
            <span>
                <c:forEach items="${lqz.navigatepageNums}" var="num" >
                    <c:if test="${num == lqz.pageNum}">
                        [${num}]
                    </c:if>
                    <c:if test="${num != lqz.pageNum}">
                        <a href="listAllCity?pn=${num}">${num}</a>
                    </c:if>
                </c:forEach>
            </span>
        </li>
        <li><a href="listAllCity?pn=${lqz.nextPage}"><span>下一页</span></a></li>
        <li><a href="listAllCity?pn=${lqz.pages}"><span>末页</span></a></li>
    </ul>
</nav>
</body>
</html>

