{% snapshot snapshot_session_summary %}
{{
    config(
        target_database='NAV1',
        target_schema='PUBLIC',
        unique_key='session_id',
        strategy='timestamp',
        updated_at='session_end'
    )
}}

SELECT
    session_id,
    user_id,
    channel,
    session_start,
    session_end
FROM
    PUBLIC.session_summary

{% endsnapshot %}
