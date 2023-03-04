<%@ page pageEncoding="utf-8" %>
<html>
<head>
    <style>
        dd{
            padding: 0px;
            margin: 0px;
        }
    </style>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        $(function (){
            $('#btn').click(function (){
                $('dl').append('<dd>员工名称：<input name="ename" required="required" /> 员工工资：<input  name="sal" required="required" /><input class="delete" type="button" value="删除"></dd>');
                $('.delete:last').click(function (){
                    $(this).parent().remove();
                });
            });
        });
    </script>
</head>
    <body>
        <form action="saveDept" method="post">
            <dl id="addBox">
                <dt> <button>保存</button> <input id="btn" type="button" value="增加员工" /></dt>
                <dt>部门名称：<input name="dname" required="required" /> 部门位置：<input name="loc" required="required" /></dt>
                <dd>员工名称：<input name="ename" required="required" /> 员工工资：<input name="sal" required="required" /></dd>
              </dl>
        </form>

        <hr/>

        <a href="showEmp.jsp">部门列表</a>
    </body>

<script>

</script>
</html>
