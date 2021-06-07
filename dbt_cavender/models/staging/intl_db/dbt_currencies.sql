{{ config(materialized='table',alias='currencies_demo') }}

with stg_currencies as (

    select * 
    from {{source ('intl_db','currencies')}}


)

select *
from stg_currencies