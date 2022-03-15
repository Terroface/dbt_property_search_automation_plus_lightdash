with source as (
    select
        cast(postcode_district as string) as postcode_district  -- Not lowered because case sensitive
        ,lower(cast(coverage as string)) as coverage
        ,lower(cast(local_authority_areas as string)) as local_authority_areas
        ,lower(cast(post_town as string)) as post_town
        ,lower(cast(relation_to_edinburgh as string)) as relation_to_edinburgh
    from 
        {{ source('staging_facts', 's_sheets_edinburgh_districts_2') }}
)

select * from source