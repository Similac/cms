var url_arr			= {'0':'http://en.jnu.findplus.cn','1':'http://cn.jnu.findplus.cn','2':'http://opac.jnu.findplus.cn'};
//处理是否同时在全文中检索
var show_qw='';


	var f_sqw = '1';//是否在全文中检索
	var f_sgc = '1';//是否仅显示电子馆藏
if(f_sqw==1){
	show_qw=',,addexpander(fulltext)';
}

//仅显示馆藏电子资源
var show_gcdz='';
if(f_sgc==1){
	var show_gcdz=',,addlimiter(FT1:y)';
}

/**
* 判断用户输入的是否包含中文
*/
function funcChina(value)
{ 
	if(/.*[\u4e00-\u9fa5]+.*$/.test(value)) 
	{ 
		return true; 
	} 
	return false; 
}
/**
* 打开地址
*/
function window_open_url(url){
	window.open(url,'_self');
}

/**
* 首页检索框
*/
function search_index()
{
	
	var tmp_key		= $.trim($('#keyword').val());
	var types		= '';
	if(types == 'TX' || types == ''){
		var stype='';
	}else{
		var stype=types+':';
	}

	if(tmp_key.length >0 || $('#res_type').val() != 2)
	{
		var search_file_name = '';		
		if(tmp_key == ''){tmp_key = 'FT Y OR FT N';}
		//当选择电子馆藏时需求，判断用户的输入的是中文还是英文
		if($('#res_type').val() == 3)
		{
			if(funcChina(tmp_key))
			{
				search_file_name = url_arr[1]+'/'+'search_list.html';
			}
			else
			{
				search_file_name = url_arr[0]+'/'+'search_list.html';
			}
		}
		else
		{
			search_file_name = url_arr[$('#res_type').val()]+'/'+'search_list.html';
		}
		window.open(search_file_name+'?query='+stype+encodeURIComponent(tmp_key)+'&action='+show_qw+show_gcdz,'_blank');
	}
	else
	{
		$('#keyword').focus();
	}
}

/*********下拉js*********/
function ShowCategory(tag)
{
	$('#search_all_category'+tag).css('display','block');
}

function HideCategory(tag)
{
	$('#search_all_category'+tag).css('display','none');
}