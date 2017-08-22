- dashboard: ticket
  title: Ticket Distribution
  layout: newspaper
  elements:
  - name: Submission per Method
    title: Submission per Method
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_pie
    fields:
    - overview_tickets.via_channel
    - overview_tickets.count
    sorts:
    - overview_tickets.count desc
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    width: 12
    height: 9
  - name: Submissions per Organization
    title: Submissions per Organization
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_pie
    fields:
    - organizations.name
    - overview_tickets.count
    sorts:
    - overview_tickets.count desc
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    width: 12
    height: 9
  - name: Satisfaction Scores
    title: Satisfaction Scores
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_pie
    fields:
    - overview_tickets.count
    - overview_tickets.satisfaction_rating_score
    sorts:
    - overview_tickets.count desc
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    row: 9
    col: 0
    width: 12
    height: 8
  - name: Satisfaction Score Over Time
    title: Satisfaction Score Over Time
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_line
    fields:
    - overview_tickets.satisfaction_rating_score
    - overview_tickets.created_date
    - overview_tickets.count
    pivots:
    - overview_tickets.satisfaction_rating_score
    fill_fields:
    - overview_tickets.created_date
    sorts:
    - overview_tickets.created_date desc
    - overview_tickets.satisfaction_rating_score
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
    font_size: '12'
    value_labels: legend
    label_type: labPer
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    row: 9
    col: 12
    width: 12
    height: 8
  - name: Satisfaction Score per Agent
    title: Satisfaction Score per Agent
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_bar
    fields:
    - overview_tickets.satisfaction_rating_score
    - overview_tickets.count
    - users.email
    pivots:
    - users.email
    sorts:
    - overview_tickets.satisfaction_rating_score
    - overview_tickets.count desc 0
    - users.email
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
    show_null_points: true
    point_style: circle_outline
    font_size: '12'
    value_labels: legend
    label_type: labPer
    interpolation: linear
    series_types: {}
    row: 17
    col: 0
    width: 12
    height: 8
  - name: Ticket Distribution By Group
    title: Ticket Distribution By Group
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_bar
    fields:
    - overview_tickets.count
    - groups.name
    filters:
      groups.name: "-NULL"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    row: 17
    col: 12
    width: 12
    height: 8
  - name: Median Group Performance
    title: Median Group Performance
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_column
    fields:
    - ticket_metrics.median_reply_time
    - ticket_metrics.median_first_resolution
    - ticket_metrics.median_full_resolution
    - ticket_metrics.median_requester_wait_time
    - groups.name
    sorts:
    - zd_ticket_metrics.median_reply_time desc
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
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size: '12'
    value_labels: legend
    label_type: labPer
    series_types: {}
    x_axis_reversed: true
    row: 25
    col: 0
    width: 12
    height: 9
  - name: Ticket Distribution by Agent
    title: Ticket Distribution by Agent
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_bar
    fields:
    - overview_tickets.count
    - users.name
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    series_types: {}
    row: 25
    col: 12
    width: 12
    height: 9
  - name: Median Agent Performance
    title: Median Agent Performance
    model: blendo_zendesk
    explore: overview_tickets
    type: looker_column
    fields:
    - ticket_metrics.median_reply_time
    - ticket_metrics.median_first_resolution
    - users.name
    - ticket_metrics.median_full_resolution
    - ticket_metrics.median_requester_wait_time
    sorts:
    - ticket_metrics.median_reply_time desc
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
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size: '12'
    value_labels: legend
    label_type: labPer
    series_types: {}
    x_axis_reversed: true
    row: 34
    col: 6
    width: 12
    height: 8
