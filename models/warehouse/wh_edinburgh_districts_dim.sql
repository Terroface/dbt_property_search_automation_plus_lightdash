{{ config(
    unique_key='postcode_district'
)}}

select 
    *
from
    {{ ref('int_edinburgh_districts') }}