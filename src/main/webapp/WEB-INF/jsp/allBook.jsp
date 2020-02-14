<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<br/>
<div class="container">
    <div>
        <div class="col-md-4 column">
            <a href="/book/toAddBook" class="btn btn btn-info">新增书籍</a>
            <a href="/book/allBook" class="btn btn btn-info">显示全部书籍</a>
        </div>
        <div class="col-md-6 column">
            <form class="form-inline" action="/book/queryBookByName" method="post" style="float: right">
                <input type="text" name="bookName" class="form-control" placeholder="请输入要查询的书籍名称">
                <input type="submit" class="btn btn btn-info" value="查询">
            </form>
        </div>
    </div>

    <div>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍介绍</th>
                <th>书籍操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.bookName}</td>
                    <td>${book.bookCount}</td>
                    <td>${book.bookDetail}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookId}" class="btn btn btn-info">修改</a>
                        <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookId}" class="btn btn btn-info">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>

</body>
</html>
