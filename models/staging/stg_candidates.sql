with source as (
    select
        lower(cast(property_id as string)) as property_id
        ,cast(district as string) as district -- Not lowered because case sensitive
        ,lower(cast(address as string)) as address
        ,cast(bathrooms as int64) as bathrooms
        ,cast(bedrooms as int64) as bedrooms
        ,lower(cast(cons as string)) as cons
        ,lower(cast(link_url as string)) as link_url
        ,cast(minutes_to_central_station_by_public_transport as numeric) as minutes_to_central_station_by_public_transport
        ,cast(minutes_to_nearest_grocery_store_on_foot as numeric) as minutes_to_nearest_grocery_store_on_foot
        ,lower(cast(name_of_page as string)) as name_of_page
        ,cast(price_gbpk * 1000 as numeric) as price_gbp
        ,lower(cast(property_type as string)) as property_type
        ,lower(cast(pros as string)) as pros
        ,cast(sqm as numeric) as sqm
        ,cast(sqm_price as numeric) as sqm_price
        ,lower(cast(title as string)) as title
    from
        {{ source('staging_facts', 's_sheets_candidates') }}
)

select * from source