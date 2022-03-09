{{ config(
    unique_key='property_id'
)}}

select 
    *
from
    {{ ref('int_candidates') }}