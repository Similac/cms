<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link type="text/css" rel="stylesheet" href="plug-in/weixin/css/style.css">
<div class="funcList" id="func">
    <ul class="list">
        <li>
            <a href="cmsController.do?goPage&page=index&siteCode=portal" target="_blank">
                <img src="./plug-in/weixin/img/func14.jpg" width="104" height="107">

                <h3>门户网站</h3>

                <p>门户网站</p>
            </a>
        </li>
        <li>
            <a href="cmsController.do?goPage&page=index" target="_blank">
                <img src="./plug-in/weixin/img/func01.jpg" width="104" height="107">

                <h3>WAP网站</h3>

                <p>WAP网站</p>
            </a>
        </li>

        <li>
            <a onclick="addTab('用户管理','webUserController.do?webUser&clickFunctionId=4af48da74d511c42014d512e6efe0004','pictures')"
               title="微信用户" url="webUserController.do?webUser" href="#">
                <img src="./plug-in/weixin/img/func02.jpg" width="105" height="107">

                <h3>用户管理</h3>

                <p>用户管理</p>
            </a>
        </li>

        <li>
            <a onclick="addTab('留言评论','feedbackController.do?feedback&clickFunctionId=4af48da74d511c42014d512e6efe0004','pictures')"
               title="留言评论" url="feedbackController.do?feedback" href="#">
                <img src="./plug-in/weixin/img/func05.jpg">

                <h3>留言评论</h3>

                <p>留言评论</p>
            </a>
        </li>
        <li>
            <a onclick="addTab('资产管理','assetsController.do?assets&clickFunctionId=4028d881436d514601436d5884be019d','pictures')"
               title="自定义菜单" url="assetsController.do?assets" href="#">
                <img src="./plug-in/weixin/img/func06.jpg">

                <h3>资产管理</h3>

                <p>固定资产管理
            </a>
            </p>
        </li>

    </ul>
</div>
