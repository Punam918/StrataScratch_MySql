SELECT user_id,  FLOOR((listen_duration)) AS total_listen_duration, COUNT( DISTINCT song_id) AS unique_song_count
FROM listening_habits;