view: overview_tickets {
  sql_table_name: public.zd_tickets ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: allow_channelback {
    type: yesno
    sql: ${TABLE}.allow_channelback ;;
  }

  dimension: assignee_id {
    type: string
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: blendo_imported_at {
    type: number
    sql: ${TABLE}.blendo_imported_at ;;
  }

  dimension: brand_id {
    type: string
    sql: ${TABLE}.brand_id ;;
  }

  dimension: collaborator_ids {
    type: string
    sql: ${TABLE}.collaborator_ids ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week,
      hour_of_day
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_at ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: followup_ids {
    type: string
    sql: ${TABLE}.followup_ids ;;
  }

  dimension: forum_topic_id {
    type: string
    sql: ${TABLE}.forum_topic_id ;;
  }

  dimension_group: generated_timestamp {
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
    sql: ${TABLE}.generated_timestamp ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: has_incidents {
    type: yesno
    sql: ${TABLE}.has_incidents ;;
  }

  dimension: is_public {
    type: yesno
    sql: ${TABLE}.is_public ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: problem_id {
    type: string
    sql: ${TABLE}.problem_id ;;
  }

  dimension: raw_subject {
    type: string
    sql: ${TABLE}.raw_subject ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }

  dimension: requester_id {
    type: string
    sql: ${TABLE}.requester_id ;;
  }

  dimension: satisfaction_rating_id {
    type: number
    sql: ${TABLE}.satisfaction_rating_id ;;
  }

  dimension: satisfaction_rating_reason {
    type: string
    sql: ${TABLE}.satisfaction_rating_reason ;;
  }

  dimension: satisfaction_rating_reason_id {
    type: number
    sql: ${TABLE}.satisfaction_rating_reason_id ;;
  }

  dimension: satisfaction_rating_score {
    type: string
    sql: ${TABLE}.satisfaction_rating_score ;;
  }

  dimension: sharing_agreement_ids {
    type: string
    sql: ${TABLE}.sharing_agreement_ids ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: submitter_id {
    type: string
    sql: ${TABLE}.submitter_id ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: ticket_form_id {
    type: string
    sql: ${TABLE}.ticket_form_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: via_channel {
    type: string
    sql: ${TABLE}.via_channel ;;
  }

  dimension: via_source_from_address {
    type: string
    sql: ${TABLE}.via_source_from_address ;;
  }

  dimension: via_source_from_name {
    type: string
    sql: ${TABLE}.via_source_from_name ;;
  }

  dimension: via_source_rel {
    type: string
    sql: ${TABLE}.via_source_rel ;;
  }

  dimension: via_source_to_address {
    type: string
    sql: ${TABLE}.via_source_to_address ;;
  }

  dimension: via_source_to_name {
    type: string
    sql: ${TABLE}.via_source_to_name ;;
  }

  #### MEASURES ####
  dimension: is_close {
    type: yesno
    sql: ${status} = 'closed' ;;
  }

  dimension: is_new {
    type: yesno
    sql: ${status} = 'new' ;;
  }

  dimension: is_backlog {
    type: yesno
    sql: ${status} = 'pending' ;;
  }

  dimension: is_open {
    type: yesno
    sql: ${status} = 'open' ;;
  }

  measure: backlog {
    type:  count_distinct
    sql: ${TABLE}.id ;;
    filters: {
      field: status
      value: "pending"
    }
  }

  measure: closed {
    type:  count_distinct
    sql: ${TABLE}.id ;;
    filters: {
      field: status
      value: "closed"
    }
  }

  measure: open {
    type:  count_distinct
    sql: ${TABLE}.id ;;
    filters: {
      field: status
      value: "open"
    }
  }

  measure: new {
    type:  count_distinct
    sql: ${TABLE}.id ;;
    filters: {
      field: status
      value: "new"
    }
  }

  measure: count {
    type: count
    drill_fields: [id, via_source_from_name, via_source_to_name]
  }
}
