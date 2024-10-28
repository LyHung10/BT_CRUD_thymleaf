<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!-- Khai báo thư viện JSTL -->
<a href="/admin/categories/add">Add Category</a>
	<table border="1">
		<!-- Thêm border để bảng hiển thị rõ hơn -->
		<tr>
			<th>STT</th>
			<th>Image</th>

			<th>Category name</th>
			<th>Status</th>

			<th>Action</th>
		</tr>

		<!-- Dùng c:forEach để duyệt qua danh sách categories -->
		<c:forEach items="${list}" var="cate" varStatus="stt">
			<tr>
				<td>${stt.index+1}</td>
				<td>${cate.images}</td>
				<td>${cate.name}</td>
				<td>${status}</td>
				<td>
					<a href="/admin/categories/edit/${cate.id}">Sửa</a> <a
					href="/admin/categories/delete!/${cate.id}">Xóa</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
