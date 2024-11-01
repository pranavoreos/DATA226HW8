WITH session_summary AS (
    SELECT
        us.user_id,
        us.session_id,
        us.channel,
        st.session_start,
        st.session_end,
        DATEDIFF('minute', st.session_start, st.session_end) AS duration_minutes
    FROM
        PUBLIC.user_sessions AS us
    JOIN
        PUBLIC.session_timestamps AS st ON us.session_id = st.session_id
)
SELECT *
FROM session_summary 
