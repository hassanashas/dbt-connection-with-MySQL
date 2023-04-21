{{ config(materialized='table') }}

with source_data as (

    select id, CONCAT(item, 'ing') as 'item_name' from {{ source('sample_table_database', 'table_three') }}

),

final as (
    select * from source_data
)

select * from final