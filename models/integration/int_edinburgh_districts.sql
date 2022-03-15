with s_edinburgh_districts as (
    select * from {{ ref('stg_edinburgh_districts') }}
)

select * from s_edinburgh_districts
    