<%@tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="status" required="true" rtexprvalue="true" %>
<c:choose>
  <c:when test="${status eq 0}">
    <button type="button" class="btn blue btn-sm">编辑</button>
    <button type="button" class="btn yellow btn-sm">投放市场</button>
    <button type="button" class="btn purple btn-sm">移除列表</button>
  </c:when>
  <c:when test="${status eq 1}">
    <button type="button" class="btn red btn-sm">立即撤回</button>
  </c:when>
  <c:when test="${status eq 2}">
    <button type="button" class="btn red btn-sm">撤回</button>
  </c:when>
  <c:when test="${status eq 3}">
    <button type="button" class="btn purple btn-sm">删除</button>
  </c:when>
  <c:otherwise></c:otherwise>
</c:choose>