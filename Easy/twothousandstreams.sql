select trackname, streams from spotify_worldwide_daily_song_ranking
where streams < 2000
order by streams desc;