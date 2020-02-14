<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<br/>
<div class="container">
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--在更新的时候需要id，所有通过隐藏域传入bookId--%>
        <input type="hidden" name="bookId" value="${book.bookId}">
        <div class="form-group">
            <label>书籍名称</label>
            <input type="text" name="bookName" class="form-control" value="${book.bookName}" required>
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" name="bookCount" class="form-control" value="${book.bookCount}" required>
        </div>
        <div class="form-group">
            <label>书籍描述</label>
            <input type="text" name="bookDetail" class="form-control" value="${book.bookDetail}" required>
        </div>
        <div class="form-group">
            <input type="submit" value="修改" class="form-control">
        </div>
    </form>
</div>
</body>
</html>
