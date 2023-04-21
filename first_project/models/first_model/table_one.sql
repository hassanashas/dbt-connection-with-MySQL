{{ config(materialized='table') }}

with source_data as (

    select * from {{ source('sample_table_database', 'table_one') }}

),

final as (
    select * from source_data
)

select * from final