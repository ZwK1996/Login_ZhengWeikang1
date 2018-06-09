<%@ page contentType="text/html" pageEncoding="UTF-8"
	import="java.util.*"%>

<html>
            <style type="text/css">      
     body{      
        background-image: url(image/pp.gif);      
        background-size:cover;    
     }      
 </style>
<body>
	<h2 style="color:red">欢迎页面</h2>

	<%
		String Login = (String) session.getAttribute("Login");
		int nCount = 0;

		if (Login != null && Login.equals("OK")) {
			Integer myCount = (Integer) session.getAttribute("myCount");
			if (myCount != null) {
				nCount = myCount.intValue();
				nCount = nCount + 1;
				session.setAttribute("myCount", new Integer(nCount));
			}
	%>
	<h2 style="color:white">登陆成功</h2>

	



	<input type=button value="退出"
		onclick="javascript:location.href='logout.jsp'">
	<%
		} else {
	%>
	<jsp:forward page="login.jsp" />
	<%
		}
	%>

</body>
</html>
