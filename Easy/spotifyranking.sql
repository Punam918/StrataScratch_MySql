select artist,count(*) as occurance
from spotify_worldwide_daily_song_ranking
group by artist
order by occurance desc;