select 
    *
from
    {{ ref('stg_candidates') }} c
    left join {{ ref('stg_scores') }} s using (property_id)