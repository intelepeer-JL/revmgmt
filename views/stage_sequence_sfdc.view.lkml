view: stage_sequence_sfdc {
  derived_table: {
    sql: Select parse_timestamp("%F", o.CloseDate) Close ,s1.*,
      case
      when StageGroup = "Prospect" then 1
      when StageGroup = "Discovery" then 2
      when StageGroup = "Qualification" then 3
      when StageGroup = "Validation" then 4
      when StageGroup = "Presentation" then 5
      when StageGroup = "Proposal" then 6
      when StageGroup = "Negotiation" then 7
      when StageGroup = "Stalled" then 8
      when StageGroup = "Closed Lost" then 9
      when StageGroup = "Closed Won" then 10
      else 11 end stageorder,
      RANK() Over(PARTITION BY s1.OpportunityId ORDER BY StartDate Asc) sequence
      from `test-and-poc.salesops_sf.Opportunity_load` o right join
      (


      WITH CTE AS (
      SELECT OpportunityId,
      StageGroup,
      CreatedDate,
      SystemModstamp,
      Amount,
      ROW_NUMBER() OVER (PARTITION BY OpportunityId, StageGroup ORDER BY CreatedDate) as seqnum,
      ROW_NUMBER() OVER (PARTITION BY OpportunityId, StageGroup ORDER BY SystemModstamp) as seqnum_2
      FROM `test-and-poc.salesops_sf.OpportunityHistory` t
      join `test-and-poc.salesops_sf.StageGroup` s on t.StageName=s.StageName
      )
      SELECT OpportunityId, StageGroup, MIN(CreatedDate) as StartDate, MAX(SystemModstamp) as EndDate,
      ARRAY_AGG(Amount Order BY CreatedDate DESC LIMIT 1)[SAFE_ORDINAL(1)] as Last_Amount
      FROM cte
      WHERE OpportunityId = '0064p00000V0JHvAAN'
      GROUP BY OpportunityId, StageGroup, (seqnum - seqnum_2)
      Order by StartDate
      )s1 on o.Id18__c = s1.OpportunityId
      join `test-and-poc.salesops_sf.OpportunityHistory` s2 on s1.OpportunityId = s2.OpportunityId
      group by OpportunityId, StageGroup, o.OwnerId, o.CloseDate, StartDate , EndDate , Last_Amount
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: close {
    type: time
    sql: ${TABLE}.Close ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.OpportunityId ;;
  }

  dimension: stage_group {
    type: string
    sql: ${TABLE}.StageGroup ;;
  }

  dimension_group: start_date {
    type: time
    sql: ${TABLE}.StartDate ;;
  }

  dimension_group: end_date {
    type: time
    sql: ${TABLE}.EndDate ;;
  }

  dimension: last_amount {
    type: number
    sql: ${TABLE}.Last_Amount ;;
  }

  dimension: stageorder {
    type: number
    sql: ${TABLE}.stageorder ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  set: detail {
    fields: [
      close_time,
      opportunity_id,
      stage_group,
      start_date_time,
      end_date_time,
      last_amount,
      stageorder,
      sequence
    ]
  }
}
