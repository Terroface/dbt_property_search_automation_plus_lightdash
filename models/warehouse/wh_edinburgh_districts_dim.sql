{{ config(
    unique_key='postcode_district_pk'
)}}

with s_edinburgh_districts as (
    select * from {{ ref('int_edinburgh_districts') }}
),

final as (
    select 
        {{ dbt_utils.surrogate_key(
            ['district_natural_key']
        ) }} as district_pk,
        district_natural_key,
        coverage,
        local_authority_areas,
        post_town,
        relation_to_edinburgh
    from
        s_edinburgh_districts
)

select * from final