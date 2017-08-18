view: zd_ticket_events_comments {
  sql_table_name: public.zd_ticket_events_comments ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: attachments_content_type {
    type: string
    sql: ${TABLE}.attachments_content_type ;;
  }

  dimension: attachments_content_url {
    type: string
    sql: ${TABLE}.attachments_content_url ;;
  }

  dimension: attachments_file_name {
    type: string
    sql: ${TABLE}.attachments_file_name ;;
  }

  dimension: attachments_height {
    type: number
    sql: ${TABLE}.attachments_height ;;
  }

  dimension: attachments_id {
    type: string
    sql: ${TABLE}.attachments_id ;;
  }

  dimension: attachments_inline {
    type: yesno
    sql: ${TABLE}.attachments_inline ;;
  }

  dimension: attachments_mapped_content_url {
    type: string
    sql: ${TABLE}.attachments_mapped_content_url ;;
  }

  dimension: attachments_size {
    type: number
    sql: ${TABLE}.attachments_size ;;
  }

  dimension: attachments_thumbnails_content_type {
    type: string
    sql: ${TABLE}.attachments_thumbnails_content_type ;;
  }

  dimension: attachments_thumbnails_content_url {
    type: string
    sql: ${TABLE}.attachments_thumbnails_content_url ;;
  }

  dimension: attachments_thumbnails_file_name {
    type: string
    sql: ${TABLE}.attachments_thumbnails_file_name ;;
  }

  dimension: attachments_thumbnails_height {
    type: number
    sql: ${TABLE}.attachments_thumbnails_height ;;
  }

  dimension: attachments_thumbnails_id {
    type: string
    sql: ${TABLE}.attachments_thumbnails_id ;;
  }

  dimension: attachments_thumbnails_inline {
    type: yesno
    sql: ${TABLE}.attachments_thumbnails_inline ;;
  }

  dimension: attachments_thumbnails_mapped_content_url {
    type: string
    sql: ${TABLE}.attachments_thumbnails_mapped_content_url ;;
  }

  dimension: attachments_thumbnails_size {
    type: number
    sql: ${TABLE}.attachments_thumbnails_size ;;
  }

  dimension: attachments_thumbnails_url {
    type: string
    sql: ${TABLE}.attachments_thumbnails_url ;;
  }

  dimension: attachments_thumbnails_width {
    type: number
    sql: ${TABLE}.attachments_thumbnails_width ;;
  }

  dimension: attachments_url {
    type: string
    sql: ${TABLE}.attachments_url ;;
  }

  dimension: attachments_width {
    type: number
    sql: ${TABLE}.attachments_width ;;
  }

  dimension: audit_id {
    type: string
    sql: ${TABLE}.audit_id ;;
  }

  dimension: author_id {
    type: string
    sql: ${TABLE}.author_id ;;
  }

  dimension: blendo_imported_at {
    type: number
    sql: ${TABLE}.blendo_imported_at ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
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
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: html_body {
    type: string
    sql: ${TABLE}.html_body ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  dimension: plain_body {
    type: string
    sql: ${TABLE}.plain_body ;;
  }

  dimension: public {
    type: yesno
    sql: ${TABLE}.public ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: via_channel {
    type: string
    sql: ${TABLE}.via_channel ;;
  }

  dimension: via_reference_id {
    type: string
    sql: ${TABLE}.via_reference_id ;;
  }

  dimension: via_source_from_address {
    type: string
    sql: ${TABLE}.via_source_from_address ;;
  }

  dimension: via_source_from_name {
    type: string
    sql: ${TABLE}.via_source_from_name ;;
  }

  dimension: via_source_from_original_recipients {
    type: string
    sql: ${TABLE}.via_source_from_original_recipients ;;
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

  measure: count {
    type: count
    drill_fields: [id, attachments_thumbnails_file_name, attachments_file_name, via_source_from_name, via_source_to_name]
  }
}
