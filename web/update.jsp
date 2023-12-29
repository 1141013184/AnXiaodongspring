<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
    <head>
        <!-- 指定字符集 -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>модификации</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/common.js"></script>

    </head>
    <body>
        <div class="container" style="width: 400px;">
        <h3 style="text-align: center;">модификации</h3>
        <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">
            <!--  隐藏域 提交id-->
            <input type="hidden" name="id" value="${student.id}">

          <div class="form-group">
            <label for="name">имя：</label>
            <input type="text" class="form-control" id="name" name="name"  value="${student.name}" readonly="readonly" placeholder="Пожалуйста, введите ваше имя" />
          </div>

          <div class="form-group">
            <label>пол：</label>
              <c:if test="${student.gender == 'М.'}">
                  <input type="radio" name="gender" value="М." checked />М.
                  <input type="radio" name="gender" value="Ж."  />Ж.
              </c:if>

              <c:if test="${student.gender == 'Ж.'}">
                  <input type="radio" name="gender" value="М."  />М.
                  <input type="radio" name="gender" value="Ж." checked  />Ж.
              </c:if>


          </div>

          <div class="form-group">
            <label for="age">возраст：</label>
            <input type="text" class="form-control" value="${student.age}" id="age"  name="age" placeholder="Пожалуйста, введите ваш возраст" />
          </div>

          <div class="form-group">
            <label for="address">адрес：</label>
             <select name="address" id="address" class="form-control" >
                 <c:if test="${student.address == 'Москва'}">
                    <option value="Москва" selected>Москва</option>
                    <option value="Санкт-Петербург">Санкт-Петербург</option>
                    <option value="Екатеринбург">Екатеринбург</option>
                 </c:if>

                 <c:if test="${student.address == 'Санкт-Петербург'}">
                     <option value="Москва" >Москва</option>
                     <option value="Санкт-Петербург" selected>Санкт-Петербург</option>
                     <option value="Екатеринбург">Екатеринбург</option>
                 </c:if>

                 <c:if test="${student.address == 'Екатеринбург'}">
                     <option value="Москва" >Москва</option>
                     <option value="Санкт-Петербург">Санкт-Петербург</option>
                     <option value="Екатеринбург" selected>Екатеринбург</option>
                 </c:if>
            </select>
          </div>

          <div class="form-group">
            <label for="qq">qq：</label>
            <input type="text" id="qq" class="form-control" value="${student.qq}" name="qq" placeholder="Пожалуйста, введите номер qq"/>
          </div>

          <div class="form-group">
            <label for="email">Email：</label>
            <input type="text" id="email" class="form-control" value="${student.email}" name="email" placeholder="Пожалуйста, введите адрес электронной почты"/>
          </div>

             <div class="form-group" style="text-align: center">
                <input class="btn btn-primary" type="submit" value="представить" />
                <input class="btn btn-default" id="back" type="button" value="возвращаться"/>
             </div>
        </form>
        </div>
    </body>
</html>