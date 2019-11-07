/**改变对象的样式
obj：要改变的对象id名称
className：要设置的样式名称
message：要显示的文字
*/
function changeClass(obj, className, message) {
	$("#" + obj).removeClass();
	$("#" + obj).addClass(className);
	$("#" + obj).html(message);
}

function isDigit(val,id)
{
    var patrn=/^[1-9][0-9]{0,20}$/;
    if (!patrn.exec(val)){
    	if(id != null){
    		document.getElementById(id).value = "";
    	}
    	 return false
    }
    return true
}


/**用于类似备注信息的校验
obj1 被校验的对象id
obj2 显示校验结果对象的id
min 被校验对象的值的最小长度
max 被校验对象的值的最大长度
msg 当min和obj1的值的长度都为0时显示的提示信息
*/
function count(obj1, obj2, min, max,msg) {
	var le = $.trim($("#" + obj1).val()).length;
	if (le > min) {
		if (le <= max) {
			changeClass(obj2, "onCorrect", "&nbsp;" + le + "/" + max);
		} else {
			changeClass(obj2, "onError", "超过" + max + "个字符！");
		}
	} else if (min == 0 && le == 0) {
		changeClass(obj2, "onShow", msg);
	} else {
		changeClass(obj2, "onError", "小于" + min + "个字符！")
	}
}

/**
options是json形式的数据
url是ajax的链接路径
msg是错误时的提示信息
data是传递的参数
tipID是显示正在校验信息的div名称
*/
function AjaxValidate(options){
	var url = options.url;
	var msg = options.msg;
	var data = options.data;
	var tipID = options.tipID
	var elem;
	$.ajax( {
		type : "POST",
		url : url,
		data : data,
		async:false,
		cache : false,
		dataType : "json",
		success : function(data) {
			if (data.msg != null) {
				elem = data.msg;
			} else if (data.exist) {
				elem = msg;
			} else {
				elem = true;
			}
		},
		beforeSend : function() {
			changeClass(tipID,"onLoad","数据校验中,请稍后...");
		},
		error : function() {
			elem = "服务器链接失败";
		}
	});
	return elem;
}
/*
elemID全选checkbox的id号；
其余的checkbox的name名
*/
 function choiceAll(elemID,name){
 	var dml = document.getElementById(elemID);
 	var inObj = document.getElementsByTagName("input");
	var len = inObj.length;	
	

	if(dml.checked==true)
	{
		for(var i=0 ; i<len ; i++) 
		{
			if(inObj[i].type=="checkbox"&&inObj[i].name==name)
				inObj[i].checked = true;								
		}													
		dml.checked = true;
	}
	else
	{
		for(var i=0 ; i<len ; i++) 
		{	
			if(inObj[i].type=="checkbox"&&inObj[i].name==name)
				inObj[i].checked = false;
		}		
		dml.checked = false;
	}		
 }
 
/*点击列表页上面的查询操作触发的事件
elemID是查询table所在的的tr的id编号*/
 function search(elemID){
   var el = document.getElementById(elemID);
   if(el.style.display=="none"){
   		el.style.display='';
   }else{
   		el.style.display="none";
   }
 }
 
 function display(ememID){
	 $(ememID).toggle();
 }
 
 