explore: wh_candidates_fact
{ hidden: yes }
explore: wh_edinburgh_districts_dim
{ hidden: yes }
view: wh_candidates_fact {
sql_table_name: wh_candidates_fact ;;
dimension: property_id_pk {
  primary_key: yes
  hidden: yes
  type: string
  sql: ${TABLE}.property_id_pk ;;
  description: "not available"
}
dimension: district_fk {
  hidden: yes 
  type: string
  sql: ${TABLE}.district_fk ;;
  description: "not available"
}
dimension: property_id_natural_key {
  type: string
  sql: ${TABLE}.property_id_natural_key ;;
  description: "not available"
}
dimension: district_natural_key {
  type: string
  sql: ${TABLE}.district_natural_key ;;
  description: "not available"
}
dimension: address {
  type: string
  sql: ${TABLE}.address ;;
  description: "not available"
}
dimension: bathrooms {
  type: number
  sql: ${TABLE}.bathrooms ;;
  description: "not available"
}
dimension: bathrooms_score {
  type: number
  sql: ${TABLE}.bathrooms_score ;;
  description: "not available"
}
dimension: bedrooms {
  type: number
  sql: ${TABLE}.bedrooms ;;
  description: "not available"
}
dimension: bedrooms_score {
  type: number
  sql: ${TABLE}.bedrooms_score ;;
  description: "not available"
}
dimension: central_station_score {
  type: number
  sql: ${TABLE}.central_station_score ;;
  description: "not available"
}
dimension: cons {
  type: string
  sql: ${TABLE}.cons ;;
  description: "not available"
}
dimension: district_short {
  type: string
  sql: ${TABLE}.district_short ;;
  description: "not available"
}
dimension: grocery_score {
  type: number
  sql: ${TABLE}.grocery_score ;;
  description: "not available"
}
dimension: link_url {
  type: string
  sql: ${TABLE}.link_url ;;
  description: "not available"
}
dimension: livability_score {
  type: number
  sql: ${TABLE}.livability_score ;;
  description: "not available"
}
dimension: minutes_to_central_station_by_public_transport {
  type: number
  sql: ${TABLE}.minutes_to_central_station_by_public_transport ;;
  description: "not available"
}
dimension: minutes_to_nearest_grocery_store_on_foot {
  type: number
  sql: ${TABLE}.minutes_to_nearest_grocery_store_on_foot ;;
  description: "not available"
}
dimension: name_of_page {
  type: string
  sql: ${TABLE}.name_of_page ;;
  description: "not available"
}
dimension: price_gbp {
  type: number
  sql: ${TABLE}.price_gbp ;;
  description: "not available"
}
dimension: price_score {
  type: number
  sql: ${TABLE}.price_score ;;
  description: "not available"
}
dimension: property_type {
  type: string
  sql: ${TABLE}.property_type ;;
  description: "not available"
}
dimension: pros {
  type: string
  sql: ${TABLE}.pros ;;
  description: "not available"
}
dimension: sqm {
  type: number
  sql: ${TABLE}.sqm ;;
  description: "not available"
}
dimension: sqm_price {
  type: number
  sql: ${TABLE}.sqm_price ;;
  description: "not available"
}
dimension: sqm_price_score {
  type: number
  sql: ${TABLE}.sqm_price_score ;;
  description: "not available"
}
dimension: title {
  type: string
  sql: ${TABLE}.title ;;
  description: "not available"
}
dimension: total_score {
  type: number
  sql: ${TABLE}.total_score ;;
  description: "not available"
}
}
view: wh_edinburgh_districts_dim {
sql_table_name: wh_edinburgh_districts_dim ;;
dimension: district_pk {
  primary_key: yes
  hidden: yes
  type: string
  sql: ${TABLE}.district_pk ;;
  description: "not available"
}
dimension: district_natural_key {
  type: string
  sql: ${TABLE}.district_natural_key ;;
  description: "not available"
}
dimension: coverage {
  type: string
  sql: ${TABLE}.coverage ;;
  description: "not available"
}
dimension: local_authority_areas {
  type: string
  sql: ${TABLE}.local_authority_areas ;;
  description: "not available"
}
dimension: post_town {
  type: string
  sql: ${TABLE}.post_town ;;
  description: "not available"
}
dimension: relation_to_edinburgh {
  type: string
  sql: ${TABLE}.relation_to_edinburgh ;;
  description: "not available"
}
}
