view: zd_ticket_events {
  sql_table_name: public.zd_ticket_events ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: blendo_imported_at {
    type: number
    sql: ${TABLE}.blendo_imported_at ;;
  }

  dimension: child_events_added_tags {
    type: string
    sql: ${TABLE}.child_events_added_tags ;;
  }

  dimension: child_events_assignee_id {
    type: string
    sql: ${TABLE}.child_events_assignee_id ;;
  }

  dimension: child_events_attachments_content_type {
    type: string
    sql: ${TABLE}.child_events_attachments_content_type ;;
  }

  dimension: child_events_attachments_content_url {
    type: string
    sql: ${TABLE}.child_events_attachments_content_url ;;
  }

  dimension: child_events_attachments_file_name {
    type: string
    sql: ${TABLE}.child_events_attachments_file_name ;;
  }

  dimension: child_events_attachments_height {
    type: number
    sql: ${TABLE}.child_events_attachments_height ;;
  }

  dimension: child_events_attachments_id {
    type: number
    sql: ${TABLE}.child_events_attachments_id ;;
  }

  dimension: child_events_attachments_inline {
    type: yesno
    sql: ${TABLE}.child_events_attachments_inline ;;
  }

  dimension: child_events_attachments_mapped_content_url {
    type: string
    sql: ${TABLE}.child_events_attachments_mapped_content_url ;;
  }

  dimension: child_events_attachments_size {
    type: number
    sql: ${TABLE}.child_events_attachments_size ;;
  }

  dimension: child_events_attachments_thumbnails_content_type {
    type: string
    sql: ${TABLE}.child_events_attachments_thumbnails_content_type ;;
  }

  dimension: child_events_attachments_thumbnails_content_url {
    type: string
    sql: ${TABLE}.child_events_attachments_thumbnails_content_url ;;
  }

  dimension: child_events_attachments_thumbnails_file_name {
    type: string
    sql: ${TABLE}.child_events_attachments_thumbnails_file_name ;;
  }

  dimension: child_events_attachments_thumbnails_height {
    type: number
    sql: ${TABLE}.child_events_attachments_thumbnails_height ;;
  }

  dimension: child_events_attachments_thumbnails_id {
    type: number
    sql: ${TABLE}.child_events_attachments_thumbnails_id ;;
  }

  dimension: child_events_attachments_thumbnails_inline {
    type: yesno
    sql: ${TABLE}.child_events_attachments_thumbnails_inline ;;
  }

  dimension: child_events_attachments_thumbnails_mapped_content_url {
    type: string
    sql: ${TABLE}.child_events_attachments_thumbnails_mapped_content_url ;;
  }

  dimension: child_events_attachments_thumbnails_size {
    type: number
    sql: ${TABLE}.child_events_attachments_thumbnails_size ;;
  }

  dimension: child_events_attachments_thumbnails_url {
    type: string
    sql: ${TABLE}.child_events_attachments_thumbnails_url ;;
  }

  dimension: child_events_attachments_thumbnails_width {
    type: number
    sql: ${TABLE}.child_events_attachments_thumbnails_width ;;
  }

  dimension: child_events_attachments_url {
    type: string
    sql: ${TABLE}.child_events_attachments_url ;;
  }

  dimension: child_events_attachments_width {
    type: number
    sql: ${TABLE}.child_events_attachments_width ;;
  }

  dimension: child_events_audit_id {
    type: number
    sql: ${TABLE}.child_events_audit_id ;;
  }

  dimension: child_events_author_id {
    type: number
    sql: ${TABLE}.child_events_author_id ;;
  }

  dimension: child_events_body {
    type: string
    sql: ${TABLE}.child_events_body ;;
  }

  dimension: child_events_brand_id {
    type: string
    sql: ${TABLE}.child_events_brand_id ;;
  }

  dimension: child_events_created_at {
    type: string
    sql: ${TABLE}.child_events_created_at ;;
  }

  dimension: child_events_event_type {
    type: string
    sql: ${TABLE}.child_events_event_type ;;
  }

  dimension: child_events_group_id {
    type: string
    sql: ${TABLE}.child_events_group_id ;;
  }

  dimension: child_events_html_body {
    type: string
    sql: ${TABLE}.child_events_html_body ;;
  }

  dimension: child_events_id {
    type: string
    sql: ${TABLE}.child_events_id ;;
  }

  dimension: child_events_organization_id {
    type: string
    sql: ${TABLE}.child_events_organization_id ;;
  }

  dimension: child_events_plain_body {
    type: string
    sql: ${TABLE}.child_events_plain_body ;;
  }

  dimension: child_events_previous_value {
    type: string
    sql: ${TABLE}.child_events_previous_value ;;
  }

  dimension: child_events_priority {
    type: string
    sql: ${TABLE}.child_events_priority ;;
  }

  dimension: child_events_public {
    type: yesno
    sql: ${TABLE}.child_events_public ;;
  }

  dimension: child_events_rel {
    type: string
    sql: ${TABLE}.child_events_rel ;;
  }

  dimension: child_events_requester_id {
    type: string
    sql: ${TABLE}.child_events_requester_id ;;
  }

  dimension: child_events_satisfaction_score {
    type: string
    sql: ${TABLE}.child_events_satisfaction_score ;;
  }

  dimension: child_events_status {
    type: string
    sql: ${TABLE}.child_events_status ;;
  }

  dimension: child_events_subject {
    type: string
    sql: ${TABLE}.child_events_subject ;;
  }

  dimension: child_events_tags {
    type: string
    sql: ${TABLE}.child_events_tags ;;
  }

  dimension: child_events_type {
    type: string
    sql: ${TABLE}.child_events_type ;;
  }

  dimension: child_events_updater_id {
    type: string
    sql: ${TABLE}.child_events_updater_id ;;
  }

  dimension: child_events_via {
    type: string
    sql: ${TABLE}.child_events_via ;;
  }

  dimension: child_events_via_channel {
    type: string
    sql: ${TABLE}.child_events_via_channel ;;
  }

  dimension: child_events_via_reference_id {
    type: number
    sql: ${TABLE}.child_events_via_reference_id ;;
  }

  dimension: child_events_via_source_from_address {
    type: string
    sql: ${TABLE}.child_events_via_source_from_address ;;
  }

  dimension: child_events_via_source_from_name {
    type: string
    sql: ${TABLE}.child_events_via_source_from_name ;;
  }

  dimension: child_events_via_source_from_original_recipients {
    type: string
    sql: ${TABLE}.child_events_via_source_from_original_recipients ;;
  }

  dimension: child_events_via_source_rel {
    type: string
    sql: ${TABLE}.child_events_via_source_rel ;;
  }

  dimension: child_events_via_source_to_address {
    type: string
    sql: ${TABLE}.child_events_via_source_to_address ;;
  }

  dimension: child_events_via_source_to_name {
    type: string
    sql: ${TABLE}.child_events_via_source_to_name ;;
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

  dimension: metadata_flags {
    type: number
    sql: ${TABLE}.metadata_flags ;;
  }

  dimension: metadata_flags_options_2_trusted {
    type: yesno
    sql: ${TABLE}.metadata_flags_options_2_trusted ;;
  }

  dimension: metadata_flags_options_3_trusted {
    type: yesno
    sql: ${TABLE}.metadata_flags_options_3_trusted ;;
  }

  dimension: metadata_notifications_suppressed_for {
    type: number
    sql: ${TABLE}.metadata_notifications_suppressed_for ;;
  }

  dimension: metadata_system_client {
    type: string
    sql: ${TABLE}.metadata_system_client ;;
  }

  dimension: metadata_system_ip_address {
    type: string
    sql: ${TABLE}.metadata_system_ip_address ;;
  }

  dimension: metadata_system_json_email_identifier {
    type: string
    sql: ${TABLE}.metadata_system_json_email_identifier ;;
  }

  dimension: metadata_system_latitude {
    type: number
    sql: ${TABLE}.metadata_system_latitude ;;
  }

  dimension: metadata_system_location {
    type: string
    sql: ${TABLE}.metadata_system_location ;;
  }

  dimension: metadata_system_longitude {
    type: number
    sql: ${TABLE}.metadata_system_longitude ;;
  }

  dimension: metadata_system_message_id {
    type: string
    sql: ${TABLE}.metadata_system_message_id ;;
  }

  dimension: metadata_system_raw_email_identifier {
    type: string
    sql: ${TABLE}.metadata_system_raw_email_identifier ;;
  }

  dimension: metadata_trusted {
    type: yesno
    sql: ${TABLE}.metadata_trusted ;;
  }

  dimension: system_client {
    type: string
    sql: ${TABLE}.system_client ;;
  }

  dimension: system_latitude {
    type: number
    sql: ${TABLE}.system_latitude ;;
  }

  dimension: system_location {
    type: string
    sql: ${TABLE}.system_location ;;
  }

  dimension: system_longitude {
    type: number
    sql: ${TABLE}.system_longitude ;;
  }

  dimension: ticket_id {
    type: string
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: updater_id {
    type: number
    sql: ${TABLE}.updater_id ;;
  }

  dimension: via {
    type: string
    sql: ${TABLE}.via ;;
  }

  dimension: is_touch {
    type: yesno
    sql: ${child_events_event_type} = 'Comment' ;;
  }

  measure: count_ticket_touches {
    type: count
    filters: {
      field: is_touch
      value: "Yes"
    }
  }

  measure: count {
    type: count
    drill_fields: [id, child_events_attachments_file_name, child_events_attachments_thumbnails_file_name, child_events_via_source_to_name, child_events_via_source_from_name]
  }
}
