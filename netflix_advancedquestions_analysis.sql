use netflix_analysis;

-- ADVANCED SQL QUERIES

-- Q1.) Rank Genres
		SELECT
		primary_genre,
		COUNT(*) AS total_titles,
		RANK() OVER(
		ORDER BY COUNT(*) DESC
		) AS genre_rank
		FROM netflix
		GROUP BY primary_genre;


--  --  --  --  --  --  --   

--  Q2.) Running Total of Content Added
		SELECT
		year_added,
		COUNT(*) AS titles,
		SUM(COUNT(*))
		OVER(
		ORDER BY year_added
		)
		AS running_total
		FROM netflix
		GROUP BY year_added;   
        
--  --  --  --  --  --  --  

--   Q3.) Previous Year's Additions
		SELECT
		year_added,
		COUNT(*) AS titles,
		LAG(COUNT(*))
		OVER(
		ORDER BY year_added
		)
		AS previous_year
		FROM netflix
		GROUP BY year_added;
        
--  --  --  --  --  --  --  

-- Q4.) Rank Movies by Duration
		SELECT
		title,
		duration_num,
		ROW_NUMBER()
		OVER(
		ORDER BY duration_num DESC
		)
		AS movie_rank
		FROM netflix
		WHERE duration_type='min'; 
        
--  --  --  --  --  --  -- 

--  Q5.) Categorize Movies by Duration
		SELECT
		title,
		duration_num,

		CASE
		WHEN duration_num<90
		THEN 'Short Movie'
		WHEN duration_num BETWEEN 90 AND 120
		THEN 'Medium Movie'
		ELSE 'Long Movie'
		END AS movie_category
		FROM netflix
		WHERE duration_type='min';
        
    
	
    
        




  