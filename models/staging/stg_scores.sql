with source as (
    select
        lower(cast(property_id as string)) as property_id_natural_key
        ,cast(bathrooms_score as numeric) as bathrooms_score
        ,cast(bedrooms_score as numeric) as bedrooms_score
        ,cast(central_station_score as numeric) as central_station_score
        ,cast(grocery_score as numeric) as grocery_score
        ,cast(livability_score as numeric) as livability_score
        ,cast(price_score as numeric) as price_score
        ,cast(sqm_price_score as numeric) as sqm_price_score
        ,cast(total_score as numeric) as total_score
    from 
        {{ source('staging_facts', 's_sheets_scores') }}
)

select * from source