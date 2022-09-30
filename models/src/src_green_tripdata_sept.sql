WITH green_tripdata_sept AS (
    SELECT
        *
    FROM
       {{ source('trip_data', 'greentrip_sept21') }}
)
SELECT
    VendorID AS vendor_id,
    lpep_pickup_datetime AS pickup_datetime,
    lpep_dropoff_datetime AS dropoff_datetime,
    store_and_fwd_flag,
    RatecodeID AS ratecode_id,
    PULocationID AS pu_location_id,
    DOLocationID AS do_location_id,
    passenger_count,
    trip_distance,
    payment_type,	
    trip_type
FROM
    green_tripdata_sept