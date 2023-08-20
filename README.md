
# DE Job vacancies full ETL pipeline (Rapid APi)

This project implements a robust Extract, Transform, and Load (ETL) pipeline that extracts, processes, and stores data engineering job vacancies in Ontario, Canada. The pipeline is designed to keep hiring managers, recruiters, and data enthusiasts informed about the latest job opportunities in the data engineering domain.

## Project Overview

The Data Engineering Job Vacancies ETL Pipeline process of gathering relevant job vacancy data from a RapidAPI service, performing data transformations, and storing the processed data in a PostgreSQL database also in Docker container. the structured data is enriched with extracted skills from the job descriptions, providing valuable insights into the sought-after skills in the job market.

The pipeline queries a reputable RapidAPI endpoint to fetch up-to-date job vacancies for data engineering positions in Ontario, Canada.
The extracted data is meticulously processed and transformed into a structured DataFrame. As a unique feature, this pipeline identifies essential skills from the job descriptions using predefined lists and categorizes them accordingly. the structured and enriched data is securely loaded into a dedicated PostgreSQL database table named "data_engineering_jobs" The PostgreSQL database acts as a centralized repository for easy access and analysis.  


## Requirements

- Python 
- Requests
- Pandas
- SQLAlchemy
- PostgreSQL
- Docker

# Usage

## Task 1: Packaging the Code into a Container  
Package the provided (job_scraping.py) code into a container to ensure its portability and
reproducibility.

First create a RapidAPI account and obtain an API key for accessing the job vacancy data in the (job_scraping.py) code.

Follow these steps:
1. Set up a Docker environment on your local machine.

2. Create a Dockerfile in the same directory as the code file.

3. Write the necessary instructions in the Dockerfile to build the container.

4. Build the container using the Dockerfile.

5. Test the container to ensure it works as expected.


## Task 2: Loading DataFrame into a PostgreSQL Table

The next task is to load the extracted DataFrame into a PostgreSQL database table called "data_engineering_jobs."
Follow these steps:
1. Install PostgreSQL on your local machine if you haven't already.

2. Set up a PostgreSQL database with the appropriate credentials.

3. Modify the code to establish a connection to your PostgreSQL database.

4. Create a table named "data_engineering_jobs" with the necessary columns to store the DataFrame data.

5. Load the DataFrame into the "data_engineering_jobs" table using the `to_sql` function provided by Pandas.

## Task 3: Filtering Remote Data Engineering Jobs with Under 3 Years of Experience

Your final task is to edit the headers to fetch a minimum of 100 remote data engineering vacancies specifically for candidates with under 3 years of experience.
Follow these steps:

1. Edit the `querystring` dictionary in the code to include the necessary parameters to filter for remote jobs and candidates with under 3 years of experience.

2. Modify the code to handle pagination and retrieve at least 100 job vacancies that meet the specified criteria.

3. Ensure that the extracted data is properly transformed and filtered to only include remote jobs and candidates with under 3 years of experience.


# challenges

the Modification output showed 30 job vacancies was retrieve, rather than at least 100 job vacancies to meet the specified criteria from the extracted data.

After Analysing the issues with the modification, i came up with some findings that while only filtering the candidates with under 3 years of experience, it only retrieve 36 output. also filtering only the job remote true, it retrieve 165 output from the extracted data.

# Conclusion

The candidates with under 3 years of experience is the reason why the output to retrieve at least 100 job vacancies reduces, because there's less data to retrieve.


## Contribution and Feedback

Contributions are welcomed to enhance and extend this ETL pipeline further. Feel free to submit pull requests, raise issues, or provide feedback to help us improve the project.


Note: Make sure to replace {YOUR API KEY} and {YOUR_HOST} in the `get_data_from_api` function with your actual RapidAPI key and Host. Additionally, fill in the Requirements section with the necessary versions of the required libraries and software. Feel free to add your GitHub profile link, and if you have any additional credentials or accolades, you can include them as well. Make sure the code is well-documented and adheres to best practices for readability and maintainability.