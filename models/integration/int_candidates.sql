with s_candidates as(
    select
        *,
        left(district_natural_key,2) as district_short
    from {{ ref('stg_candidates') }} 
),

s_scores as (
    select * from {{ ref('stg_scores') }}
),

candidates_scores_merged as (
    select 
        s_candidates.property_id_natural_key,
        s_candidates.district_natural_key,
        s_candidates.address,
        s_candidates.bathrooms,
        s_candidates.bedrooms,
        s_candidates.cons,
        s_candidates.district_short,
        s_candidates.link_url,
        s_candidates.minutes_to_central_station_by_public_transport,
        s_candidates.minutes_to_nearest_grocery_store_on_foot,
        s_candidates.name_of_page,
        s_candidates.price_gbp,
        s_candidates.property_type,
        s_candidates.pros,
        s_candidates.sqm,
        s_candidates.sqm_price,
        s_candidates.title,
        s_scores.bathrooms_score,
        s_scores.bedrooms_score,
        s_scores.central_station_score,
        s_scores.grocery_score,
        s_scores.livability_score,
        s_scores.price_score,
        s_scores.sqm_price_score,
        s_scores.total_score
    from
        s_candidates
        left join s_scores using (property_id_natural_key)
)

select * from candidates_scores_merged