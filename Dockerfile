FROM python:3.12.5
WORKDIR /app
COPY requirements.txt .
COPY salary_data.csv .
COPY app.py .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["python", "app.py"]
