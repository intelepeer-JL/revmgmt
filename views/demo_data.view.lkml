# The name of this view in Looker is "Demo Data"
view: demo_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `test-and-poc.marketing_demo_2021.DemoData`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Partition" in Explore.

  dimension: partition {
    type: string
    sql: ${TABLE}.`partition` ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.result ;;
  }

  # embed_style:
  # background_color: "#5980DC"
  # show_title: true
  # title_color: "#5980DC"
  # show_filters_bar: false
  # tile_background_color: "#5980DC"
  # tile_text_color: "#5980DC"

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: time_stamp {
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
    sql: ${TABLE}.TimeStamp ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.uniqueID ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.
