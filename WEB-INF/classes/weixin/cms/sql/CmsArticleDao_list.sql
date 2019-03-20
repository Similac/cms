SELECT * FROM (
SELECT * FROM weixin_cms_article WHERE  istop = 'Y' and topdate >= now()
<#if cmsArticleEntity.createBy?exists && cmsArticleEntity.createBy ?length gt 0 && cmsArticleEntity.createBy=='Y'>
 and  (column_id = :cmsArticleEntity.columnId OR column_firstparent_id = :cmsArticleEntity.columnId)
</#if>
<#if cmsArticleEntity.createBy=='N'|| cmsArticleEntity.createBy ?length lte 0>
 and column_id = :cmsArticleEntity.columnId
</#if>
<#if cmsArticleEntity.createName?exists && cmsArticleEntity.createName ?length gt 0 && cmsArticleEntity.createName=='Y'>
 and image_name is not null
</#if>
<#if cmsArticleEntity.createName?exists && cmsArticleEntity.createName ?length gt 0 && cmsArticleEntity.createName=='N'>
 and image_name is null
</#if>
order by istop DESC
) t1
union all
SELECT * FROM (
 select * from weixin_cms_article where 1 = 1 and (istop !='Y'  OR (istop = 'Y' AND topdate < NOW() ) )
 <#if cmsArticleEntity.createBy?exists && cmsArticleEntity.createBy ?length gt 0 && cmsArticleEntity.createBy=='Y'>
 and  (column_id = :cmsArticleEntity.columnId OR column_firstparent_id = :cmsArticleEntity.columnId)
</#if>
<#if cmsArticleEntity.createBy=='N'|| cmsArticleEntity.createBy ?length lte 0>
 and column_id = :cmsArticleEntity.columnId
</#if>
<#if cmsArticleEntity.createName?exists && cmsArticleEntity.createName ?length gt 0 && cmsArticleEntity.createName=='Y'>
 and image_name is not null
</#if>
<#if cmsArticleEntity.createName?exists && cmsArticleEntity.createName ?length gt 0 && cmsArticleEntity.createName=='N'>
 and image_name is null
</#if>
 order by create_date DESC
) t2