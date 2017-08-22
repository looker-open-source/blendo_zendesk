connection: "blendo_database"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: ticket_events {
  join: ticket_events_comments  {
    type:  left_outer
    sql_on: ${ticket_events.child_events_id}=${ticket_events_comments.parent_id} ;;
    relationship: many_to_one
      }
}

explore: overview_tickets {

  join: groups {
    type: left_outer
    sql_on: ${overview_tickets.group_id} = ${groups.id} ;;
    relationship: many_to_one
 }

  join: users {
    type: left_outer
    sql_on: ${overview_tickets.assignee_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: ticket_metrics {
    type: left_outer
    sql_on: ${overview_tickets.id} = ${ticket_metrics.ticket_metric_ticket_id} ;;
    relationship: many_to_one
  }

  join: organizations {
    type: left_outer
    sql_on: ${overview_tickets.organization_id} = ${organizations.id} ;;
    relationship: many_to_one
  }
}
