package cn.com.gd.pager;

import javax.servlet.http.HttpServletRequest;

public class PageUtils {
 
	
	/*
	 * 获取当前页
	 */

	public static int getPc(HttpServletRequest req){
		int pc = 1;//初始化当前页
		 String param = req.getParameter("pc");//获取pc参数的值
		 if(param!=null && !param.trim().isEmpty()){//判断获取的pc参数是否为空
		 try{
			 pc = Integer.parseInt(param);//将获取的参数的值转化为int型赋值给pc
			}catch(Exception e){}
		 }		
		return pc;//返回获得的pc
	}

	/*
	 * http://localhost:8080/goods/BookServlet?method=findByCategory&cid=xxx
	 * req.getRequestURI() = /goods/BookServlet
	 */
	/*
	 * 截取url,页面的分页导航需要使用它作为超链接的目标
	 */
	public static String getUrl(HttpServletRequest req){
		String url = req.getRequestURI()+"?";
		if(!(req.getQueryString()==null)){
			url = url+req.getQueryString();
		}
		//获取请求的url
		int index = url.lastIndexOf("&pc=");//判断url中是否有pc参数
		if(index != -1){
			url = url.substring(0,index);//截取除pc外的所有字符
		}
		return url;//返回获得的url
	}
}
