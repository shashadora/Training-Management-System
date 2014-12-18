<%@include file="dbConnect.jsp" %>
<%
        	PreparedStatement register = null;
                String queryString = "update courses set dean_approval= 1 where id = ?";
		register = con.prepareStatement(queryString);
                register.setString(1, request.getParameter("id"));
                int courses_rs = register.executeUpdate();
                if (courses_rs > 0){
                    out.println("<script>window.location = '/Training_Management_System/module.jsp'; </script>");
                }
        %>
