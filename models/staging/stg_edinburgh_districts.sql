with cte1 as (
    select
        -- ,_row
        -- ,_fivetran_synced
        coverage
        ,local_authority_areas
        ,post_town
        ,postcode_district
        ,relation_to_edinburgh
    from `ra-development.amir_analytics_dev.sheets_edinburgh_districts_2`
)

select * from cte1