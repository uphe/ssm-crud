<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<br/>
<div class="container">
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label>书籍名称</label>
            <input type="text" name="bookName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" id="count" name="bookCount" class="form-control" required>
<%--            <script>--%>
<%--                var bookCount = $("#count").val();--%>
<%--                var reg = "/^[1-9]\\d*$/";--%>
<%--                if (reg.exec(bookCount)) {--%>
<%--                    console.log("是数字");--%>
<%--                }--%>
<%--            </script>--%>
        </div>
        <div class="form-group">
            <label>书籍描述</label>
            <input type="text" name="bookDetail" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" value="添加" class="form-control">
        </div>
    </form>
</div>
</body>
</html>
