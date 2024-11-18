# Sales-Analysis-SQL

For this analysis, I have used a retail-shop dataset which had 1000 unique rows. Using SQL, I investigated the relationships between different variables such as total sales and the product category; gender and the product category; total transactions by month. 

**Dataset Adjustments:** All the data present in the dataset was in 2023. So, I only needed to extract the month for a more concise analysis. 


<img width="595" alt="Screenshot 2024-11-16 at 00 10 49" src="https://github.com/user-attachments/assets/b0c66503-07fc-41eb-8fa8-cf4adbd656a9">



**Total Sales and Transaction Count by Month:** Now that I have the months in order, I looked at the total sales and total transactions grouped by month. 




<img width="682" alt="Screenshot 2024-11-16 at 00 12 32" src="https://github.com/user-attachments/assets/553ae69c-b130-4068-83b5-2edee9217398">

Here are the graphs:




<img width="734" alt="Screenshot 2024-11-16 at 00 14 59" src="https://github.com/user-attachments/assets/81f6f79e-0cfc-40e9-a777-1d3374d27dbc">


**Customer Analysis:** I tried to find out which category was the most popular for each gender. In order to do this, I used window functions in PostgreSQL.


<img width="792" alt="Screenshot 2024-11-16 at 00 19 01" src="https://github.com/user-attachments/assets/8f9baa0b-ce88-4ec5-a355-192c3c9577b9">

Here's the graph:


<img width="382" alt="Screenshot 2024-11-16 at 00 20 40" src="https://github.com/user-attachments/assets/2db21e11-8d21-4886-84f1-97595f250b47">


**Category Performance By Month:** This was the last thing I investigated. I wanted to find out how each of these categories performed each month. Again, I used a window function to execute the query. 



<img width="815" alt="Screenshot 2024-11-16 at 00 23 18" src="https://github.com/user-attachments/assets/7c7ae9a7-0f03-49f1-acc0-5cfee91e2892">


In order to create a graph, I decided that using slicers would be the best; since three lines on a line graph seemed a bit confusing. Here's the graph I made on Excel:


<img width="622" alt="Screenshot 2024-11-16 at 00 25 23" src="https://github.com/user-attachments/assets/803241e1-62d3-49d7-beda-62cd8473c9f8">


