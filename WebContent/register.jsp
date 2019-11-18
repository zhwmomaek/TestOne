<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
input[type="button"],#info{
	float:left;
}
#info
{
	margin-left:20px;
}
</style>

<script type="text/javascript">
function checkit(){
	 var str = document.getElementsByName("uname").item(0).value;
	 str = str.replace(/\s+/g,""); 
	 if(str.length==0){
		 document.getElementsByName("uname").item(0).selectionStart=0;
		 document.getElementsByName("uname").item(0).selectionEnd=
		 document.getElementsByName("uname").item(0).value.length-1;
		 document.getElementsByName("uname").item(0).focus();
		 document.getElementById("info").innerHTML="请输入用户名";
		 false;
	 }
}
</script>

<body>
 <form name="f1" action="show.jsp">
	<table>
		<tr><td>用户名</td><td><input type="text" name="uname"></td></tr>
		<tr><td>密码</td><td><input type="password" name="pwd"></td></tr>
		<tr><td>重复密码</td><td><input type="password" name="pwd1"></td></tr>
		<tr><td>所在省份</td><td>
		<select name="prov">
			<option value="北京">北京</option>
			<option value="上海">上海</option>
			<option value="天津">天津</option>
			<option value="重庆">重庆</option>
		</select>
		</td></tr>
		
		<tr><td>兴趣爱好</td><td><input type="checkbox" name="hobby" value="爬山">爬山
		<input type="checkbox" name="hobby" value="上网">上网
		<input type="checkbox" name="hobby" value="看书">看书
		<input type="checkbox" name="hobby" value="下棋">下棋
		<input type="checkbox" name="hobby" value="游泳">游泳
		<input type="checkbox" name="hobby" value="兵乓球">兵乓球
		</td></tr>
		<tr>
	
		<td colspan="2"><input type="button" value="TIjiao" onclick="return checkit();"><div id="info"></div></td></tr>
	</table>
</form>
</body>
</html>