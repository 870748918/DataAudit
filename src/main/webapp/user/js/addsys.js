
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
    function validateLoginName(){
    	var id="LoginName";
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
    		$("#"+id+"Error").text("登陆名不能为空");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	if(value.length<3 || value.length>20){
    		$("#"+id+"Error").text("登陆名长度必须在3~20之间");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	return true;
    	
    }
    
	/*
	 * 登陆编号校验
	 */
    function validateLoginName(){
    	var id="LoginName";
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
    		$("#"+id+"Error").text("登陆名不能为空");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	if(value.length<3 || value.length>20){
    		$("#"+id+"Error").text("登陆名长度必须在3~20之间");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	return true;
    	
    }
    
	/*
	 * 登陆编号校验
	 */
    function validateLoginName(){
    	var id="LoginName";
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
    		$("#"+id+"Error").text("登陆名不能为空");
    		showError($("#"+id+"Error"));
    		return false;
    	}
    	
    	if(value.length<3 || value.length>20){
    		$("#"+id+"Error").text("登陆名长度必须在3~20之间");
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
    		$("#"+id+"Error").text("联系方式不能为空");
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
 
    

    $("#registForm").submit(function(){
    	var bool = true;

    	if(! validateUserID()){
    		
    		return false;
    	}
        if(! validateUserName()){
        
        	return false;
        }
    	if(! validateDepID()){
    		
    		return false;
    	}

    	if(! validateDepName()){
    		
    		return false;
    	}
    	if(! validateConTract()){
    		
    		return false;
    	}
    	if(! validateEmail()){
    		
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
/*
 * 换一张验证码
 */
function _hyz(){
	/*
	 * 获取<img>元素
	 * 重新设置它的src,即用毫秒数添加参数
	 */
    $("#imgVerifyCode").attr("src","/goods/VerifyCodeServlet?a="+new Date().getTime());
}

