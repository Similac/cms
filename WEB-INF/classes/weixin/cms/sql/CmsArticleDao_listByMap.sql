SELECT * FROM weixin_cms_article WHERE 1=1
<#if params.menuid ?exists && params.menuid ?length gt 0>
    and  column_id = :params.menuid
</#if>