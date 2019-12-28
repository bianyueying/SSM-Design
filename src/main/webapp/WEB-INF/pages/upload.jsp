<%--
  User: 月影
  Date: 2019/12/9 21:43
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    pageContext.setAttribute("bml",request.getContextPath());
%>
<html>
    <head>
        <title>文件上传界面</title>
        <%-- 引入JQ和Bootstrap --%>
        <script src="${bml}/js/jquery-3.4.1.min.js"></script>
        <link href="${bml}/css/bootstrap.min.css" rel="stylesheet">
        <script src="${bml}/js/bootstrap.min.js"></script>
        <link href="${bml}/css/style.css" rel="stylesheet">
    </head>
    <body>
        <%--单文件上传--%>
        <div class="form-group">
            <div style="margin-left: 20px;font-size: 16px" class="col-sm-2">单文件上传: </div>
            <br><br>
            <div class="col-sm-2">
                <div class="input-group">
                    <form style="float: left" action="${bml}/simpleUpload" method="post" enctype="multipart/form-data">
                        <label class="input-group-btn">
                            <input style="margin-left: 20px"id='location' class="form-control" onclick="$('#i-file').click();">
                            <input type="button" id="i-check" value="浏览..." class="btn btn-info" onclick="$('#i-file').click();">
                            <input style="margin-left: 20px" type="submit" value="提交" class="btn btn-success" >
                        </label>
                        <input type="file" name="header" id='i-file' accept="*.*" onchange="$('#location').val($('#i-file').val());" style="display: none">
                    </form>
                </div>
            </div>
        </div>
        <br><br><br><br>

        <%--多文件上传--%>
        <div class="form-group">
            <div style="margin-left: 20px;font-size: 16px" class="col-sm-2">多文件上传: </div>
            <br><br>
            <div class="col-sm-2">
                <div class="input-group">
                    <form style="float: left" action="${bml}/moreUpload" method="post" enctype="multipart/form-data">
                        <label class="input-group-btn">
                            <%--第一行--%>
                            <input style="margin-left: 20px;margin-bottom: 15px" id='location2' class="form-control" onclick="$('#i-file2').click();">
                            <input style="margin-bottom: 15px" type="button" id="i-check2" value="浏览..." class="btn btn-info" onclick="$('#i-file2').click();">
                            <br><br><br>
                            <%--第二行--%>
                            <input style="margin-left: 20px;margin-bottom: 15px" id='location3' class="form-control" onclick="$('#i-file3').click();">
                            <input style="margin-bottom: 15px" type="button" id="i-check3" value="浏览..." class="btn btn-info" onclick="$('#i-file3').click();">
                            <br><br><br>
                            <%--第三行--%>
                            <input style="margin-left: 20px;margin-bottom: 15px" id='location4' class="form-control" onclick="$('#i-file4').click();">
                            <input style="margin-bottom: 15px" type="button" id="i-check4" value="浏览..." class="btn btn-info" onclick="$('#i-file4').click();">
                            <%--总提交--%>
                            <input style="margin-left: 20px;margin-bottom: 15px" type="submit" value="提交" class="btn btn-info" >
                        </label>
                        <input type="file" name="header" id='i-file2' accept="*.*" onchange="$('#location2').val($('#i-file2').val());" style="display: none">
                        <input type="file" name="header" id='i-file3' accept="*.*" onchange="$('#location3').val($('#i-file3').val());" style="display: none">
                        <input type="file" name="header" id='i-file4' accept="*.*" onchange="$('#location4').val($('#i-file4').val());" style="display: none">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
