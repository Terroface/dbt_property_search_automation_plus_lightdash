include: "/_base/base.layer.lkml"
include: "/_aggregate/aggregate.layer.lkml"
explore: wh_candidates_fact_explore {
hidden: no
view_name: wh_candidates_fact
join: wh_edinburgh_districts_dim {
  sql_on: ${wh_edinburgh_districts_dim.district_fk} = ${wh_candidates_fact.district_pk} ;;
  relationship: one_to_many
}
}
