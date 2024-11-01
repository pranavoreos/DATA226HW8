WITH user_data AS (
    SELECT
        user_id,
        session_id,
        channel
    FROM
        PUBLIC.user_sessions
)
SELECT * FROM user_data
