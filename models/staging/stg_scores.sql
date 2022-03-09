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
        ,property_id
        ,sqm_price_score
        ,total_score
    from `ra-development.amir_analytics_dev.sheets_scores`
)

select * from cte1