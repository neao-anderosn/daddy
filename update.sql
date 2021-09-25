-- 方法1：
update
    GOOD_LIST a,
    ERP b
set
    a.Uname = b.Uname,
	a.Utype = b.Utype ,
	a.Usku = b.Usku ,
	a.Uspu = b.Uspu ,
	a.remark = '01 以BI_SKU 匹配ERP编码'
where
	a.BI_sku = b.ERP_sku;

-- 方法2：
update
    GOOD_LIST a
    left join ERP b on a.BI_sku = b.ERP_sku
set
    a.Uname = b.Uname,
	a.Utype = b.Utype ,
	a.Usku = b.Usku ,
	a.Uspu = b.Uspu ,
	a.remark = '01 以BI_SKU 匹配ERP编码'