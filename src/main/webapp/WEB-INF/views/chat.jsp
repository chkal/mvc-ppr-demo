<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>MVC Partial Page Rendering</title>
    <link href="${mvc.contextPath}/webjars/bootstrap/3.3.6/dist/css/bootstrap.css" rel="stylesheet">
    <script type="application/javascript" src="${mvc.contextPath}/webjars/jquery/1.12.3/dist/jquery.js"></script>
    <script type="application/javascript" src="${mvc.contextPath}/js/chat.js"></script>
  </head>
  <body>
    <div class="container">

      <h1>Partial Page Rendering</h1>

      <form id="form" action="${mvc.basePath}/chat/post" method="POST"
            class="form-inline" style="margin: 1em 0;">

        <div class="form-group">
          <input type="text" id="name" name="name" class="form-control" placeholder="Your name">
        </div>

        <div class="form-group">
          <input type="text" id="message" name="message" class="form-control" placeholder="Message">
        </div>

        <button type="submit" class="btn btn-default">Send</button>

      </form>

      <div id="table-wrapper">

        <c:if test="${not empty messages}">
          <table class="table table-striped table-bordered">
            <colgroup>
              <col style="width: 8%;">
              <col style="width: 10%;">
              <col>
            </colgroup>
            <thead>
              <tr>
                <th>Time</th>
                <th>User</th>
                <th>Message</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="message" items="${messages}">
                <tr>
                  <td>${message.timeAsString}</td>
                  <td>${message.name}</td>
                  <td>${message.message}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </c:if>

      </div>

    </div>
  </body>
</html>
