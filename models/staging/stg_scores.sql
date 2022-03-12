with cte1 as (
    select
        -- ,_row
        -- ,_fivetran_synced
        bathrooms_score
        ,bedrooms_score
        ,central_station_score
        ,grocery_score
        ,livability_score
        ,price_score
        ,cast(property_id as string) as property_id
        ,sqm_price_score
        ,cast(total_score as numeric) as total_score
    from `ra-development.amir_analytics_dev.sheets_scores`
)

select * from cte1