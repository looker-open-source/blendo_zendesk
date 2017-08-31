- dashboard: customer_support
  title: Customer Support
  layout: newspaper
  elements:
  - name: Backlogged Tickets
    title: Backlogged Tickets
    model: blendo_zendesk
    explore: overview_tickets
    type: single_value
    fields:
    - overview_tickets.backlog
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 0
    width: 6
    height: 5
  - name: Closed Tickets
    title: Closed Tickets
    model: blendo_zendesk
    explore: overview_tickets
    type: single_value
    fields:
    - overview_tickets.closed
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 6
    width: 6
    height: 5
  - name: New Tickets
    title: New Tickets
    model: blendo_zendesk
    explore: overview_tickets
    type: single_value
    fields:
    - overview_tickets.new
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 12
    width: 6
    height: 5
  - name: Open Tickets
    title: Open Tickets
    model: blendo_zendesk
    explore: overview_tickets
    type: single_value
    fields:
    - overview_tickets.open
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 18
    width: 6
    height: 5
  - name: Ticket Creation and Resolution
    title: Ticket Creation and Resolution
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_area
    fields:
    - overview_tickets.created_date
    - overview_tickets.closed
    - overview_tickets.count
    fill_fields:
    - overview_tickets.created_date
    sorts:
    - overview_tickets.created_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    series_types: {}
    row: 5
    col: 0
    width: 12
    height: 8
  - name: Busy Days
    title: Busy Days
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_column
    fields:
    - overview_tickets.count
    - overview_tickets.created_day_of_week
    fill_fields:
    - overview_tickets.created_day_of_week
    sorts:
    - overview_tickets.created_day_of_week
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 5
    col: 12
    width: 12
    height: 8
  - name: Busy Hours
    title: Busy Hours
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_area
    fields:
    - overview_tickets.count
    - overview_tickets.created_hour_of_day
    fill_fields:
    - overview_tickets.created_hour_of_day
    sorts:
    - overview_tickets.count desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    row: 13
    col: 0
    width: 12
    height: 8
  - name: First Time Resolution in Minutes
    title: First Time Resolution in Minutes
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_line
    fields:
    - overview_tickets.created_date
    - ticket_metrics.max_first_resolution
    - ticket_metrics.median_first_resolution
    - ticket_metrics.min_first_resolution
    fill_fields:
    - overview_tickets.created_date
    sorts:
    - overview_tickets.created_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 13
    col: 12
    width: 12
    height: 8
  - name: Full Time Resolution in Minutes
    title: Full Time Resolution in Minutes
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_line
    fields:
    - overview_tickets.created_date
    - ticket_metrics.max_full_resolution
    - ticket_metrics.median_full_resolution
    - ticket_metrics.min_full_resolution
    fill_fields:
    - overview_tickets.created_date
    sorts:
    - overview_tickets.created_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 21
    col: 0
    width: 12
    height: 8
  - name: Reply Time in Minutes
    title: Reply Time in Minutes
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_line
    fields:
    - overview_tickets.created_date
    - ticket_metrics.max_reply_time
    - ticket_metrics.median_reply_time
    - ticket_metrics.min_reply_time
    fill_fields:
    - overview_tickets.created_date
    sorts:
    - overview_tickets.created_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 21
    col: 12
    width: 12
    height: 8
  - name: Requester Wait Time
    title: Requester Wait Time
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_line
    fields:
    - overview_tickets.created_date
    - ticket_metrics.max_requester_wait_time
    - ticket_metrics.median_requester_wait_time
    - ticket_metrics.min_requester_wait_time
    fill_fields:
    - overview_tickets.created_date
    sorts:
    - overview_tickets.created_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 29
    col: 6
    width: 12
    height: 7
