view: permitted_equipment {
  sql_table_name: national_parks.permitted_equipment ;;

  dimension: campsiteid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.CAMPSITEID ;;
  }

  dimension: equipmentname {
    type: string
    sql: ${TABLE}.EQUIPMENTNAME ;;
  }

  dimension: maxlength {
    type: number
    sql: ${TABLE}.MAXLENGTH ;;
  }

  measure: count {
    type: count
    drill_fields: [equipmentname, campsites.campsiteid, campsites.campsitename]
  }
}
