-- SQLA30NY1US23\DEV01 Phoenix16
SELECT
	o.ord_id,
	o.create_dt,
	o.ord_quality,
	o.comments_txt,
	o.pndg_ord_id,
	o.last_modified_dt,
	o.register_up_id,
	o.deleted_ind,
	o.sales_comments_txt,
	o.jbr_comments_txt,
	o.investor_comments_txt,
	o.pjbr_comments_txt,
	o.ext_ord_id,
	Products.prd_id,
	Products.ioi_amt_type,
	Products.ioi_ccy_id,
	Products.limit_prd_id,
	Products.limit_in_pct_ind,
	Products.alloc_confirmed_dt,
	Products.canceled_ind,
	Products.inst_alloc_qty,
	Products.ret_alloc_qty,
	Products.settle_ccy_id,
	Products.dbd_sm_id,
	Products.owner_sm_id,
	Products.shared_jbr_ind,
	Products.final_alloc_qty,
	Products.dbd_brk_id,
	Products.owner_brk_id,
	Products.show_to_issuer_ind,
	Products.limit_ccy_id,
	Products.soft_ioi_ind,
	Products.stlmnt_loc_id,
	Products.offer_px_override,
	Products.price,
	Steps.price,
	Steps.coupon,
	Steps.premium,
	Steps.spread,
	Steps.ioi_qty,
	Steps.ioi_amt,
	Steps.yield,
	Steps.ytm,
	Steps.ioi_pct
FROM
	tbl_issue i
JOIN tbl_tranche t ON t.iss_id = i.iss_id
JOIN tbl_syndicate_mem sm ON sm.trn_id = t.trn_id
JOIN tbl_equity_order eo ON eo.sm_id = sm.sm_id
JOIN tbl_order o ON o.ord_id = eo.ord_id
JOIN tbl_order_product Products ON Products.ord_id = o.ord_id
JOIN tbl_order_ioi Steps ON Steps.ord_id = o.ord_id
WHERE
	o.ord_id IN (1847484988, 1847484989, 1847484990, 1847484992, 1847484994, 1847484996, 1847484997, 1847484998,
					1847484999, 1847485000, 1847485001, 1847485002, 1847485003, 1847485004)
ORDER BY
	o.ord_id, Products.prd_id
FOR JSON AUTO;
