select
    date_date,
    (operational_margin - ads_cost) as ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_click,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    log_cost,
    ship_cost
from {{ ref("int_campaigns_day") }}
full outer join {{ ref("finance_days") }} using (date_date)
order by date_date desc
