include: "/_base/base.layer.lkml"
view: +wh_candidates_fact {
measure: count_of_property_id_pk {
  type: count_distinct
  sql: ${TABLE}.property_id_pk ;;
  description: "not available"
}
}
view: +wh_edinburgh_districts_dim {
measure: count_of_district_pk {
  type: count_distinct
  sql: ${TABLE}.district_pk ;;
  description: "not available"
}
}
