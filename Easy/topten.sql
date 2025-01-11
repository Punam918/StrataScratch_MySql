select trackname, position from  spotify_worldwide_daily_song_ranking
group by trackname,position
order by trackname asc, position desc
limit 10;