select trackname, avg(streams) from spotify_worldwide_daily_song_ranking
group by trackname;