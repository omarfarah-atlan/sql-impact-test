create
or replace view HOTEL_BOOKINGS_DB.PUBLIC_TRANSFORM.COMBINED_BOOKINGS(
  _DBT_SOURCE_RELATION,
  ID,
  BOOKING_REFERENCE,
  HOTEL,
  BOOKING_DATE,
  COST
) as (
  (
    select
      cast('hotel_bookings_db.public.bookings_1' as TEXT) as _dbt_source_relation,
      cast("ID" as NUMBER(38, 0)) as "ID",
      cast("BOOKING_REFERENCE" as NUMBER(38, 0)) as "BOOKING_REFERENCE",
      cast("HOTEL" as character varying(16777216)) as "HOTEL",
      cast("BOOKING_DATE" as DATE) as "BOOKING_DATE",
      cast("COST" as NUMBER(38, 0)) as "COST"
    from
      hotel_bookings_db.public.bookings_1
  )
  union all
  (
    select
      cast('hotel_bookings_db.public.bookings_2' as TEXT) as _dbt_source_relation,
      cast("ID" as NUMBER(38, 0)) as "ID",
      cast("BOOKING_REFERENCE" as NUMBER(38, 0)) as "BOOKING_REFERENCE",
      cast("HOTEL" as character varying(16777216)) as "HOTEL",
      cast("BOOKING_DATE" as DATE) as "BOOKING_DATE",
      cast("COST" as NUMBER(38, 0)) as "COST"
    from
      hotel_bookings_db.public.bookings_2
  )
);
