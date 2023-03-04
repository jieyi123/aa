<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function (){
            $.post('deptList',{},function(depts){
                for(var i=0;i<depts.length;i++){
                    var dept=depts[i];
                    $('dl').append("<dt>"+dept.dname+","+dept.loc+"</dt>");
                    for(var j=0;j<dept.emps.length;j++){
                        var emp=dept.emps[j];
                        $('dl').append("<dd>"+emp.ename+","+emp.sal+"</dd>")
                    }
                }
            },'json');
        });
    </script>
</head>
<body>
    <h2>部门信息列表</h2>
<dl>

</dl>
</body>
</html>
