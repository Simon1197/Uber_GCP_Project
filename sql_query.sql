select VendorID, SUM(fare_amount)  from `uber_data_engineering_py.fact_table`
GROUP BY VendorID;

select b.payment_type_name, avg(a.tip_amount) from `uber_data_engineering_py.fact_table` a
join `uber_data_engineering_py.payment_type_dim` b
on a.payment_type_id = b.payment_type_id
group by b.payment_type_name;

select pickup_location_id, count(trip_distance_id) as number_of_trip from `uber_data_engineering_py.fact_table`
group by pickup_location_id limit 10; 

select passenger_count_id, sum(trip_distance_id) as total_number_of_trips from `uber_data_engineering_py.fact_table`
group by passenger_count_id;

select b.pick_hour, avg(a.fare_amount) as avg_fare_amount_by_hour_of_the_day from `uber_data_engineering_py.fact_table` a
join `uber_data_engineering_py.datetime_dim` b
on a.datetime_id = b.datetime_id
group by b.pick_hour;
