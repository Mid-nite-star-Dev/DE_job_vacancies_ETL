FROM python
RUN pip install pandas requests
WORKDIR /app
COPY job_scraping.py job_scraping.py
CMD ["python","job_scraping.py"]