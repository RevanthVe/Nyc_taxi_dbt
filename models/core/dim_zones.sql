{{ config(materialized='table') }}

select locationid, Borough, Zone,
    replace(service_zone,'Boro','Green') as service_zone
from {{ref('taxizone_lookup')}}
