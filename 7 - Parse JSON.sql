DECLARE @json NVARCHAR(MAX) = '
[{
	"ord_id": 1847484992,
	"create_dt": "2001-08-02T15:14:26",
	"ord_quality": 2,
	"pndg_ord_id": 1847484864,
	"last_modified_dt": "2013-07-30T12:19:48.410",
	"register_up_id": 1847486762,
	"deleted_ind": false,
	"Products": [{
		"prd_id": 1847486514,
		"ioi_amt_type": "P",
		"ioi_ccy_id": 1847483648,
		"limit_prd_id": 1847486514,
		"limit_in_pct_ind": false,
		"canceled_ind": true,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"price": 14.500000,
			"ioi_qty": 100
		},
		{
			"price": 3.750000,
			"ioi_amt": 1500
		},
		{
			"price": 1.120000,
			"ioi_amt": 5600
		}]
	},
	{
		"prd_id": 1847486515,
		"ioi_amt_type": "C",
		"ioi_ccy_id": 1847483648,
		"limit_prd_id": 1847486514,
		"limit_in_pct_ind": false,
		"canceled_ind": true,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"price": 14.500000,
			"ioi_qty": 100
		},
		{
			"price": 3.750000,
			"ioi_amt": 1500
		},
		{
			"price": 1.120000,
			"ioi_amt": 5600
		}]
	},
	{
		"prd_id": 1847486517,
		"ioi_amt_type": "C",
		"ioi_ccy_id": 1847483648,
		"limit_prd_id": 1847486515,
		"limit_in_pct_ind": false,
		"canceled_ind": true,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"price": 14.500000,
			"ioi_qty": 100
		},
		{
			"price": 3.750000,
			"ioi_amt": 1500
		},
		{
			"price": 1.120000,
			"ioi_amt": 5600
		}]
	}]
},
{
	"ord_id": 1847484999,
	"create_dt": "2001-08-03T15:26:59",
	"pndg_ord_id": 1847484873,
	"last_modified_dt": "2013-07-30T12:19:48.410",
	"register_up_id": 1847486803,
	"deleted_ind": true,
	"Products": [{
		"prd_id": 1847486514,
		"ioi_amt_type": "P",
		"limit_prd_id": 1847486514,
		"limit_in_pct_ind": false,
		"canceled_ind": false,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"price": 10.000000,
			"ioi_qty": 10000000
		}]
	}]
},
{
	"ord_id": 1847485000,
	"create_dt": "2001-08-03T17:43:54",
	"pndg_ord_id": 1847484875,
	"last_modified_dt": "2013-07-30T12:19:48.410",
	"register_up_id": 1847486753,
	"deleted_ind": true,
	"Products": [{
		"prd_id": 1847486514,
		"ioi_amt_type": "P",
		"limit_in_pct_ind": false,
		"canceled_ind": false,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"ioi_qty": 500000
		}]
	}]
},
{
	"ord_id": 1847485002,
	"create_dt": "2001-08-03T21:30:17",
	"pndg_ord_id": 1847484880,
	"last_modified_dt": "2013-07-30T12:19:48.410",
	"register_up_id": 1847486753,
	"deleted_ind": false,
	"Products": [{
		"prd_id": 1847486514,
		"ioi_amt_type": "P",
		"limit_in_pct_ind": false,
		"canceled_ind": false,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"ioi_qty": 1000000
		},
		{
			"ioi_qty": 2000000
		},
		{
			"ioi_qty": 3000000
		}]
	},
	{
		"prd_id": 1847486515,
		"ioi_amt_type": "P",
		"limit_in_pct_ind": false,
		"canceled_ind": false,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"ioi_qty": 1000000
		},
		{
			"ioi_qty": 2000000
		},
		{
			"ioi_qty": 3000000
		}]
	},
	{
		"prd_id": 1847486517,
		"ioi_amt_type": "P",
		"limit_in_pct_ind": false,
		"canceled_ind": false,
		"inst_alloc_qty": 2,
		"shared_jbr_ind": false,
		"show_to_issuer_ind": false,
		"soft_ioi_ind": false,
		"Steps": [{
			"ioi_qty": 1000000
		},
		{
			"ioi_qty": 2000000
		},
		{
			"ioi_qty": 3000000
		}]
	}]
}]'

SELECT * FROM OPENJSON(@json) 
WITH (
	Id INT N'$.ord_id',
	PendingId INT N'$.pndg_ord_id',
	Date DATETIME2 N'$.last_modified_dt',
	Price DECIMAL N'$.Products[0].Steps[0].price',
	Qty DECIMAL N'$.Products[0].Steps[0].ioi_qty'
)