use netflix_analysis;
SELECT COUNT(*) from netflix;

-- CONTENT OVERVIEW

-- Q1.)How many total Movies and TV Shows are available on Netflix?
		SELECT COUNT(*) AS total_titles
		FROM netflix;
        
 --    --    --  --   --   -- 
 
-- Q2.) Movies vs TV Shows
		SELECT
		type,
		COUNT(*) AS total_titles
		FROM netflix
		GROUP BY type;
	
--   --  --  --  --  --  --  --

--  Q3.) Percentage of Movies and TV Shows
		SELECT
		type,
		COUNT(*) AS total_titles,
		ROUND(
			COUNT(*)*100/
			(SELECT COUNT(*) FROM netflix),
			2
			) AS percentage
	FROM netflix
	GROUP BY type;
    
--  --  --  --  --

-- Q4.) Count Content by Rating
		SELECT
		rating,
		COUNT(*) AS total_titles
		FROM netflix
		GROUP BY rating
		ORDER BY total_titles DESC;
        
-- --  --  --  --  --

-- Q5.) Which Rating has the Most Content?
		SELECT rating,
		COUNT(*) AS total_titles
		FROM netflix
		GROUP BY rating
		ORDER BY total_titles DESC
		LIMIT 1;
	
    -- --  --  --  --  --
    
    
-- GROWTH ANALYSIS


-- Q6.) Titles Added Every Year 
		SELECT
		year_added,
		COUNT(*) AS total_titles
		FROM netflix
		GROUP BY year_added
		ORDER BY year_added;
        
 -- --  --  --  --  --
 
 -- Q7.) Top 5 Years with Highest Content Addition
			 SELECT
				year_added,
				COUNT(*) AS total_titles
			FROM netflix
			GROUP BY year_added
			ORDER BY total_titles DESC
			LIMIT 5;

-- --  --  --  --  --

-- Q8.) Content Added Every Month
		SELECT
			month_name,
			COUNT(*) AS total_titles
		FROM netflix
		GROUP BY 
				 month_name
		ORDER BY total_titles; 
        
-- --  --  --  --  --

--  Q9.) Oldest Release Year
		SELECT
		MIN(release_year)
		FROM netflix; 
        
-- --  --  --  --  --

--  Q10.) Latest Release Year
		SELECT
		MAX(release_year)
		FROM netflix; 
        
-- --  --  --  --  --

-- MARKET INTELLIGENCE

--  Q11.) Movies by India
		SELECT
			COUNT(*) AS india_titles
		FROM netflix
		WHERE country LIKE '%India%';
        
-- --  --  --  --  --

-- CONTENT INTELLIGENCE

--  Q12.) Top Genres
		SELECT
			primary_genre,
			COUNT(*) AS total_titles
		FROM netflix
		GROUP BY primary_genre
		ORDER BY total_titles DESC;  
        
-- --  --  --  --  --

--  Q13.) Average Movie Duration
		SELECT
		AVG(duration_num)
		FROM netflix
		WHERE duration_type='min'; 
        
-- --  --  --  --  --

--  Q14.) Longest Movie
		SELECT
		title,
		duration_num
		FROM netflix
		WHERE duration_type='min'
		ORDER BY duration_num DESC
		LIMIT 1; 
        
-- --  --  --  --  --

--  Q15.) Average Number of Seasons
		SELECT
		AVG(duration_num)
		FROM netflix
		WHERE duration_type='Seasons'; 
        
-- --  --  --  --  --

--  Q16.) Movies Longer Than Average
		SELECT
		title,
		duration_num
		FROM netflix
		WHERE duration_type='min'
		AND duration_num>(
		SELECT
		AVG(duration_num)
		FROM netflix
		WHERE duration_type='min'
		); 
        
-- --  --  --  --  --

--  CREATOR INTELLIGENCE

--  Q18.) Top Directors
		SELECT
		director,
		COUNT(*) AS total_titles
		FROM netflix
		WHERE director!='Unknown'
		GROUP BY director
		ORDER BY total_titles DESC
		LIMIT 10;
        
-- --  --  --  --  --

--  Q19.) Directors with More Than 5 Titles
		SELECT
		director,
		COUNT(*) AS total_titles
		FROM netflix
		WHERE director!='Unknown'
		GROUP BY director
		HAVING COUNT(*)>5; 
        
-- Q20.) Movies Released After 2018
		SELECT
		title,
		release_year
		FROM netflix
		WHERE
		type='Movie'
		AND release_year>2018; 
        

        

        
        


        
        
            
        
        
			