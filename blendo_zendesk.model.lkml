connection: "blendo_database"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

#explore: zd_groups {}

#explore: zd_organizations {}

explore: zd_ticket_events {
  join: zd_ticket_events_comments  {
    type:  left_outer
    sql_on: ${zd_ticket_events.child_events_id}=${zd_ticket_events_comments.parent_id} ;;
    relationship: many_to_one
      }
}

explore: overview_tickets {

  join: zd_groups {
    type: left_outer
    sql_on: ${overview_tickets.group_id} = ${zd_groups.id} ;;
    relationship: many_to_one
 }

  join: zd_users {
    type: left_outer
    sql_on: ${overview_tickets.assignee_id} = ${zd_users.id} ;;
    relationship: many_to_one
  }

  join: zd_ticket_metrics {
    type: left_outer
    sql_on: ${overview_tickets.id} = ${zd_ticket_metrics.ticket_metric_ticket_id} ;;
    relationship: many_to_one
  }

  join: zd_organizations {
    type: left_outer
    sql_on: ${overview_tickets.organization_id} = ${zd_organizations.id} ;;
    relationship: many_to_one
  }
}
