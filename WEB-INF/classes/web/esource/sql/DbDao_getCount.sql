SELECT count(*) FROM dbtab as d
<#if dbtabEntity.id?exists && dbtabEntity.id ?length gt 0>,db_pressubject as p </#if>
<#if dbtabEntity.restypecode?exists && dbtabEntity.restypecode ?length gt 0>,db_prestype as t </#if>
WHERE 1=1
and d.isdelete = 0
<#if dbtabEntity.id?exists && dbtabEntity.id ?length gt 0>
 and  (p.subjectid = :dbtabEntity.id AND p.dbid = d.id)
</#if>
<#if dbtabEntity.firstchar?exists && dbtabEntity.firstchar ?length gt 0>
 and  d.firstchar = :dbtabEntity.firstchar
</#if>
<#if dbtabEntity.restypecode?exists && dbtabEntity.restypecode ?length gt 0>
 and  (t.typeid = :dbtabEntity.restypecode AND t.dbid = d.id)
</#if>
<#if dbtabEntity.cnname?exists && dbtabEntity.cnname ?length gt 0>
 and (d.cnname LIKE "%":dbtabEntity.cnname"%" OR d.enname LIKE "%":dbtabEntity.enname"%")
</#if>
