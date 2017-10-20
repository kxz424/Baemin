<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ import Checkbox from 'elements/CustomCheckbox/CustomCheckbox'; %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 우리반 연습 </title>

</head>
<body>
<div>
    <Checkbox
        number="1"
        isChecked={true}
        label="Checked"
    />
    <Checkbox
        number="2"
        isChecked={false}
        label="Unchecked"
    />
</div>

</body>
</html>