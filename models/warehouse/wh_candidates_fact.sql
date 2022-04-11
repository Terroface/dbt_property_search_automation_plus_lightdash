{{ config(
    unique_key='property_id_pk'
)}}

with s_candidates as (
    select * from {{ ref('int_candidates') }}
),

final as (
    select
        {{ dbt_utils.surrogate_key(
            ['property_id_natural_key']
        ) }} as property_id_pk,
        {{ dbt_utils.surrogate_key(
            ['district_natural_key']
        ) }} as district_fk,
        property_id_natural_key,
        district_natural_key,
        address,
        bathrooms,
        bathrooms_score,
        bedrooms,
        bedrooms_score,
        central_station_score,
        cons,
        district_short,
        grocery_score,
        link_url,
        livability_score,
        minutes_to_central_station_by_public_transport,
        minutes_to_nearest_grocery_store_on_foot,
        name_of_page,
        price_gbp,
        price_score,
        property_type,
        pros,
        sqm,
        sqm_price,
        sqm_price_score,
        title,
        total_score
    from
        s_candidates

)

select * from final