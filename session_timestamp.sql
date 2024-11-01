WITH session_data AS (
    SELECT
        session_id,
        session_start,
        session_end
    FROM
        PUBLIC.session_timestamps
)
SELECT * FROM session_data
