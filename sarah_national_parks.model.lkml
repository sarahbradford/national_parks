connection: "lookerdata_publicdata"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: sarah_national_parks_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sarah_national_parks_default_datagroup

explore: activities {}

explore: attributes {}

explore: campsites {}

explore: events {}

explore: facilities {}

explore: facility_addresses {}

explore: media {}

explore: member_tours {
  join: tours {
    type: left_outer
    sql_on: ${member_tours.tourid} = ${tours.tourid} ;;
    relationship: many_to_one
  }
}

explore: org_entities {}

explore: organizations {}

explore: permit_entrance_zones {}

explore: permit_entrances {}

explore: permitted_equipment {
  join: campsites {
    type: left_outer
    sql_on: ${permitted_equipment.campsiteid} = ${campsites.campsiteid} ;;
    relationship: many_to_one
  }
}

explore: rec_area_facilities {}

explore: tours {}
