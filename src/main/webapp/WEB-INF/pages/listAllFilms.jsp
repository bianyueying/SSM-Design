<%--
  User: 月影
  Date: 2019/12/9 13:33
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
            #div0{margin-left: 30px;margin-right: 30px;margin-top: -30px}
            #div1{margin-right: 10px}
            #div2{margin-right: 10px}
            #div3{margin-right: 10px}
            #div4{margin-right: 10px}
            #div5{margin-right: 10px}
        </style>
    </head>
    <body>
        <div id="div0" class="row" >
            <table id="bml" class="table table-striped table-bordered table-hover table-condensed">
                <h1>Film列表 - 共 ${info.total} 部</h1>

                <div id="div1" class="btn-group">
                    <a class="btn btn-success" href="${bml}/listAllFilms">SSM课程设计</a>
                </div>

                <div id="div2" class="btn-group">
                    <a class="btn btn-success" href="${bml}/toAddFilm">添加Film</a>
                </div>
                <div id="div3" class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">菜单选择<span class="caret"></span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <a href="${bml}/listAll">演员表单</a>
                        </li>
                        <li role="presentation">
                            <a href="${bml}/listAllFilms">电影表单</a>
                        </li>
                        <li role="presentation">
                            <a href="${bml}/listAllCity">国家城市表</a>
                        </li>
                    </ul>
                </div>
                <div id="div4" class="btn-group">
                    <a class="btn btn-info" href="${bml}/toUpload">文件上传</a>
                </div>
                <div id="div5" class="btn-group">
                    <a class="btn btn-danger" href="${bml}/listAll">退出登录</a>
                </div>
                <div style="height:15px"></div>

                <thead>
                    <tr class="success">
                        <th>ID</th>
                        <th>电影名</th>
                        <th style="width: 100px">简介</th>
                        <th>放映时间</th>
                        <th>语言ID</th>
                        <th>租赁期限</th>
                        <th>租金率</th>
                        <th>电影时长</th>
                        <th>最后更新时间</th>
                        <th>修改</th>
                        <th>删除</th>
                    </tr>
                </thead>

                <tbody>
                <c:forEach items="${info.list}" var="film" >
                    <tr>
                        <td>${film.id}</td>
                        <td>${film.title}</td>
                        <td>${film.description}</td>
                        <td>${film.release_year}</td>
                        <td>${film.language_id}</td>
                        <td>${film.rental_duration}</td>
                        <td>${film.rental_rate}</td>
                        <td>${film.length}</td>
                        <td>${film.last_update}</td>
                        <td><a href="${bml}/editFilm?id=${film.id}"><span class="glyphicon glyphicon-edit"></span> </a></td>
                        <td><a href="${bml}/deleteFilm?id=${film.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <nav class="pageDIV">
            <ul class="pagination pagination-lg">
                <li><a href="listAllFilms?pn=1"><span>首页</span></a></li>
                <li><a href="listAllFilms?pn=${info.prePage}"><span>上一页</span></a></li>
                <li>
                    <span>
                        <c:forEach items="${info.navigatepageNums}" var="num" >
                            <c:if test="${num == info.pageNum}">
                                [${num}]
                            </c:if>
                            <c:if test="${num != info.pageNum}">
                                <a href="listAllFilms?pn=${num}">${num}</a>
                            </c:if>
                        </c:forEach>
                    </span>
                </li>
                <li><a href="listAllFilms?pn=${info.nextPage}"><span>下一页</span></a></li>
                <li><a href="listAllFilms?pn=${info.pages}"><span>末页</span></a></li>
            </ul>
        </nav>
    </body>
</html>
