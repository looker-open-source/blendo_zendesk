view: zd_ticket_metrics {
  sql_table_name: public.zd_ticket_metrics ;;

  dimension: blendo_imported_at {
    type: number
    sql: ${TABLE}.blendo_imported_at ;;
  }

  dimension: ticket_metric_agent_wait_time_in_minutes_business {
    type: number
    sql: ${TABLE}.ticket_metric_agent_wait_time_in_minutes_business ;;
  }

  dimension: ticket_metric_agent_wait_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_metric_agent_wait_time_in_minutes_calendar ;;
  }

  dimension_group: ticket_metric_assigned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_assigned_at ;;
  }

  dimension: ticket_metric_assignee_stations {
    type: number
    sql: ${TABLE}.ticket_metric_assignee_stations ;;
  }

  dimension_group: ticket_metric_assignee_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_assignee_updated_at ;;
  }

  dimension_group: ticket_metric_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_created_at ;;
  }

  dimension: ticket_metric_first_resolution_time_in_minutes_business {
    type: number
    sql: ${TABLE}.ticket_metric_first_resolution_time_in_minutes_business ;;
  }

  dimension: ticket_metric_first_resolution_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_metric_first_resolution_time_in_minutes_calendar ;;
  }

  dimension: ticket_metric_full_resolution_time_in_minutes_business {
    type: number
    sql: ${TABLE}.ticket_metric_full_resolution_time_in_minutes_business ;;
  }

  dimension: ticket_metric_full_resolution_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_metric_full_resolution_time_in_minutes_calendar ;;
  }

  dimension: ticket_metric_group_stations {
    type: number
    sql: ${TABLE}.ticket_metric_group_stations ;;
  }

  dimension: ticket_metric_id {
    type: string
    sql: ${TABLE}.ticket_metric_id ;;
  }

  dimension_group: ticket_metric_initially_assigned {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_initially_assigned_at ;;
  }

  dimension_group: ticket_metric_latest_comment_added {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_latest_comment_added_at ;;
  }

  dimension: ticket_metric_on_hold_time_in_minutes_business {
    type: number
    sql: ${TABLE}.ticket_metric_on_hold_time_in_minutes_business ;;
  }

  dimension: ticket_metric_on_hold_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_metric_on_hold_time_in_minutes_calendar ;;
  }

  dimension: ticket_metric_reopens {
    type: number
    sql: ${TABLE}.ticket_metric_reopens ;;
  }

  dimension: ticket_metric_replies {
    type: number
    sql: ${TABLE}.ticket_metric_replies ;;
  }

  dimension: ticket_metric_reply_time_in_minutes_business {
    type: number
    sql: ${TABLE}.ticket_metric_reply_time_in_minutes_business ;;
  }

  dimension: ticket_metric_reply_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_metric_reply_time_in_minutes_calendar ;;
  }

  dimension_group: ticket_metric_requester_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_requester_updated_at ;;
  }

  dimension: ticket_metric_requester_wait_time_in_minutes_business {
    type: number
    sql: ${TABLE}.ticket_metric_requester_wait_time_in_minutes_business ;;
  }

  dimension: ticket_metric_requester_wait_time_in_minutes_calendar {
    type: number
    sql: ${TABLE}.ticket_metric_requester_wait_time_in_minutes_calendar ;;
  }

  dimension_group: ticket_metric_solved {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_solved_at ;;
  }

  dimension_group: ticket_metric_status_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_status_updated_at ;;
  }

  dimension: ticket_metric_ticket_id {
    type: string
    sql: ${TABLE}.ticket_metric_ticket_id ;;
  }

  dimension_group: ticket_metric_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ticket_metric_updated_at ;;
  }

  dimension: ticket_metric_url {
    type: string
    sql: ${TABLE}.ticket_metric_url ;;
  }
#### measures ####
  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_first_resolution {
    type: average
    sql: (${TABLE}.ticket_metric_first_resolution_time_in_minutes_business)/60 ;;
  }

  measure: max_first_resolution {
    type: max
    sql: (${TABLE}.ticket_metric_first_resolution_time_in_minutes_business)/60 ;;
  }

  measure: min_first_resolution {
    type: min
    sql: (${TABLE}.ticket_metric_first_resolution_time_in_minutes_business)/60 ;;
  }

  measure: median_first_resolution {
    type: median
    sql: (${TABLE}.ticket_metric_first_resolution_time_in_minutes_business)/60 ;;
  }

  measure: avg_full_resolution {
    type: average
    sql: (${TABLE}.ticket_metric_full_resolution_time_in_minutes_business)/60 ;;
  }

  measure: max_full_resolution {
    type: max
    sql: (${TABLE}.ticket_metric_full_resolution_time_in_minutes_business)/60 ;;
  }

  measure: min_full_resolution {
    type: min
    sql: (${TABLE}.ticket_metric_full_resolution_time_in_minutes_business)/60 ;;
  }

  measure: median_full_resolution {
    type: median
    sql: (${TABLE}.ticket_metric_full_resolution_time_in_minutes_business)/60 ;;
  }

  measure: avg_reply_time {
    type: average
    sql: (${TABLE}.ticket_metric_reply_time_in_minutes_business) ;;
  }

  measure: max_reply_time {
    type: max
    sql: (${TABLE}.ticket_metric_reply_time_in_minutes_business) ;;
  }

  measure: min_reply_time {
    type: min
    sql: (${TABLE}.ticket_metric_reply_time_in_minutes_business) ;;
  }

  measure: median_reply_time {
    type: median
    sql: (${TABLE}.ticket_metric_reply_time_in_minutes_business) ;;
  }

  measure: avg_requester_wait_time {
    type: average
    sql: (${TABLE}.ticket_metric_requester_wait_time_in_minutes_business) ;;
  }

  measure: max_requester_wait_time {
    type: max
    sql: (${TABLE}.ticket_metric_requester_wait_time_in_minutes_business) ;;
  }

  measure: min_requester_wait_time {
    type: min
    sql: (${TABLE}.ticket_metric_requester_wait_time_in_minutes_business) ;;
  }

  measure: median_requester_wait_time {
    type: median
    sql: (${TABLE}.ticket_metric_requester_wait_time_in_minutes_business) ;;
  }

}
