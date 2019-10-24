<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<script  type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<body>
<h2>Excel文件上传</h2>
<div>
    <form enctype="multipart/form-data" id="makes" itemtype="post">
        <span>选择文件</span><br>
        <input type="file" id="excelFile" name="file"><br>
        <button type="submit" οnclick="importExc()" >导入</button>
    </form>
</div>

</body>
</html>
<script>
    function importExc() {
        var formData = new FormData();
        //检验导入的文件是否为Excel文件
        var uploadFile = document.getElementById("excelFile").value;
        formData.append("excelFile",$("#excelFile")[0].files[0]);
        formData.append("name",uploadFile);
        if(uploadFile == null || uploadFile == ''){
            layer.msg("请选择要上传的Excel文件");
            return false;
        }else{
            var fileExtend = uploadFile.substring(uploadFile.lastIndexOf('.')).toLowerCase();
            if(fileExtend == '.xls'){
            }else{
                layer.msg("文件格式需为'.xls'格式");
                return false;
            }
        } $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath }/user/upload.do",
            data:formData,
            // 告诉jQuery不要去处理发送的数据
            processData : false,
            // 告诉jQuery不要去设置Content-Type请求头
            contentType : false,
            beforeSend:function(){
                console.log("正在进行，请稍候");
            },
            success:function (data) {
                if(data=="1"){
                    layer.msg("导入成功");
                }else{
                    layer.error("导入失败");
                }
            }
        })
    }
</script>
