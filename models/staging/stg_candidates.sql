with cte1 as (
    select
        -- ,_row
        -- ,_fivetran_synced
        address
        ,bathrooms
        ,bedrooms
        ,cons
        ,district
        ,link_url
        -- ,livability
        ,minutes_to_central_station_by_public_transport
        ,name_of_page
        ,price_gbpk * 1000 as price_gbp
        ,property_id
        ,property_type
        ,pros
        ,sqm
        ,sqm_price
        ,title
    from `ra-development.amir_analytics_dev.sheets_candidates`
)

select * from cte1