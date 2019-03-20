<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#functionid').tree({
			checkbox : true,
			url : 'roleController.do?setAuthority&roleId=${roleId}',
			onLoadSuccess : function(node) {
				expandAll();
			},

		});
        $('#siteid').tree({
            checkbox : true,
            url : 'roleController.do?setSite&roleId=${roleId}',
            onLoadSuccess : function(node) {
                expandAll2();
            },

        });
		$("#functionListPanel").panel(
				{
					title :"菜单列表",
					tools:[{iconCls:'icon-save',handler:function(){mysubmit();}}]
				}
		);
		$("#operationListpanel").panel(
				{
					title :"站点权限",
					tools:[{iconCls:'icon-save',handler:function(){submitsite();}}]
				}
		);
	});
	function mysubmit() {
		var roleId = $("#rid").val();
		var s = GetNode();
		doSubmit("roleController.do?updateAuthority&rolefunctions=" + s + "&roleId=" + roleId);
	}
	function submitsite() {
		var roleId = $("#rdid").val();
		var s = GetSite();
		doSubmit("roleController.do?updateSite&site=" + s + "&roleId=" + roleId);
	}

	function GetSite() {
		var node = $('#siteid').tree('getChecked');
		var cnodes = '';

		for ( var i = 0; i < node.length; i++) {
			if ($('#siteid').tree('isLeaf', node[i].target)) {
				cnodes += node[i].id + ',';

			}
		}
		cnodes = cnodes.substring(0, cnodes.length - 1);
		return cnodes;
	};
	function GetNode() {
		var node = $('#functionid').tree('getChecked');
		var cnodes = '';
		var pnodes = '';
		var pnode = null; //保存上一步所选父节点
		for ( var i = 0; i < node.length; i++) {
			if ($('#functionid').tree('isLeaf', node[i].target)) {
				cnodes += node[i].id + ',';
				pnode = $('#functionid').tree('getParent', node[i].target); //获取当前节点的父节点
				while (pnode!=null) {//添加全部父节点
					pnodes += pnode.id + ',';
					pnode = $('#functionid').tree('getParent', pnode.target); 
				}
			}
		}
		cnodes = cnodes.substring(0, cnodes.length - 1);
		pnodes = pnodes.substring(0, pnodes.length - 1);
		return cnodes + "," + pnodes;
	};
	
	function expandAll() {
		var node = $('#functionid').tree('getSelected');
		if (node) {
			$('#functionid').tree('expandAll', node.target);
		} else {
			$('#functionid').tree('expandAll');
		}
	}
    function expandAll2() {
		var node = $('#siteid').tree('getSelected');
		if (node) {
			$('#siteid').tree('expandAll2', node.target);
		} else {
			$('#siteid').tree('expandAll2');
		}

    }
	function selecrAll() {
		var node = $('#functionid').tree('getRoots');
		for ( var i = 0; i < node.length; i++) {
			var childrenNode =  $('#functionid').tree('getChildren',node[i].target);
			for ( var j = 0; j < childrenNode.length; j++) {
				$('#functionid').tree("check",childrenNode[j].target);
			}
	    }
	}
	function selecrAll2() {
		var node = $('#siteid').tree('getRoots');
		for ( var i = 0; i < node.length; i++) {

			$('#siteid').tree("check",node[i].target);
		}
	}
	function reset() {
		$('#functionid').tree('reload');
	}
	function reset2() {
		$('#siteid').tree('reload');
	}

	$('#selecrAllBtn').linkbutton({   
	});
	$('#selecrAllBtn2').linkbutton({
	});
	$('#resetBtn').linkbutton({   
	});
	$('#resetBtn2').linkbutton({
	});
</script>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;">
<div class="easyui-panel" style="padding: 1px;" fit="true" border="false" id="functionListPanel">
	<input type="hidden" name="roleId" value="${roleId}" id="rid"> <a id="selecrAllBtn"
	onclick="selecrAll();">全选</a> <a id="resetBtn" onclick="reset();">重置</a>
<ul id="functionid"></ul>
</div>
</div>
<div region="east" style="width: 150px; overflow: hidden;" split="true">
<div class="easyui-panel" style="padding: 1px;" fit="true" border="false" id="operationListpanel">
	<input type="hidden" name="roleId" value="${roleId}" id="rdid">
	<a id="selecrAllBtn2" onclick="selecrAll2();">全选</a>
	<a id="resetBtn2" onclick="reset2();">重置</a>
	<ul id="siteid"></ul>

</div>
</div>
</div>
