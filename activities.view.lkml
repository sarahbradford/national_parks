view: activities {
  sql_table_name: national_parks.activities ;;

  dimension: activityid {
    primary_key: yes
    type: number
    sql: ${TABLE}.ACTIVITYID ;;
  }

  dimension: activitylevel {
    type: number
    sql: ${TABLE}.ACTIVITYLEVEL ;;
  }

  dimension: activityname {
    type: string
    sql: ${TABLE}.ACTIVITYNAME ;;
  }

  dimension: activityparentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ACTIVITYPARENTID ;;
  }

  measure: count {
    type: count
    drill_fields: [activityid, activityname]
  }
}
