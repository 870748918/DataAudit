$(function(){
	/*
	 * 得到所有错误信息，循环遍历之后，调用showError来圈定是否显示错误信息！
	 */
	$(".errorClass").each(function(){
		showError($(this));
	});
	/*
	 * 得到焦点后隐藏错误信息
	 */
	$(".inputClass").focus(function(){
		var labelId = $(this).attr("id")+"Error";//通过输入框找到对应id
		$("#"+labelId).text("");//清空label的内容
		showError($("#"+labelId));//隐藏label
	});
	/*
	 * 失去焦点校验
	 */
	$(".inputClass").blur(function(){
		var id = $(this).attr("id");
		var funName="validate"+id.substring(0,1).toUpperCase()+id.substring(1)+"()";
		eval(funName);
	});
	/*
	 * 用户名校验
	 */
    function validateUserName(){
    	var id="UserName";
    	var value = $("#"+id).val();//获取标签中的内容
    	/*
    	 * 非空校验
    	 */
    	if(!value){
    		/*
    		 * 获取对应的label
    		 * 加入错误提示
    		 * 显示错误信息
    		 */
    		$("#"+id+"Error").text("用户名不能为空");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	if(value.length<2 || value.length>20){
    		$("#"+id+"Error").text("用户名长度必须在2~20之间");
    		showError($("#"+id+"Error"));
    		return false;
    	}   	
    	
    	return true;
    	
    }
    /*
     * 校验个人编号
     */
    function validateUserID(){
    	var id = "UserID";
    	var value = $("#"+id).val();//获取标签中的内容
    	if(!value){
    		$("#"+id+"Error").text("负责人ID不能为空");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	if(value.length<3 || value.length>20){
    		$("#"+id+"Error").text("负责人ID长度必须在3~20之间");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	return true;
    }


    /*
     * 校验部门名称
     */
    function validateDepName(){
    	var id = "DepName";
    	var value = $("#"+id).val();//获取标签中的内容
    	if(!value){
    		$("#"+id+"Error").text("部门名称不能为空");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	return true;
    	
    }
    
    /*
     * 校验联系方式
     */
    function validateConTract(){
    	var id = "ConTract";
    	var value = $("#"+id).val();//获取标签中的内容
    	if(!value){
    		$("#"+id+"Error").text("联系电话不能为空");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	if(!/^1[0-9]{10}$/.test(value)){
    		$("#"+id+"Error").text("联系电话格式不正确");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	return true;
    	
    }
    /*
	 * 邮箱校验
	 */
    function validateEmail(){
    	var id="Email";
    	var value = $("#"+id).val();//获取标签中的内容
    	/*
    	 * 检验邮箱格式是否正确
    	 */
    	if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(value)){
    		/*
    		 * 获取对应的label
    		 * 加入错误提示
    		 * 显示错误信息
    		 */
    		
    		$("#"+id+"Error").text("错误的Email格式");
    		showError($("#"+id+"Error"));
    		return false;
          }
    	return true;
    }
    
  
    $("#registForm").submit(function(){
    	var bool = true;

        if(! validateUserID()){
        	alert(1);
        	return false;
        }
        if(!validateUserName()){
        	alert(2);
        	return false;
        }
        
    	if(! validateDepName()){
    		alert(3);
    		return false;
    	}
    	if(! validateConTract()){
    		alert(4);
    		return false;
    	}
    	if(! validateEmail()){
    		alert(5);
    		return false;
    	}
    	   	   	
    	return true;
    });
    
    
	
} );



/*
 * 判断是否有错误信息
 */
function showError(ele){
	var text = ele.text();//获取内容
	if(!text){
		ele.css("display","none");//如果没内容,则隐藏
	}else{
		ele.css("display","");//如果有内容,显示元素
	}
}

