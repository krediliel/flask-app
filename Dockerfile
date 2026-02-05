FROM python:3.12-slim

WORKDIR /app

# מתקינים תלותים
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# מעתיקים קוד
COPY app.py .

EXPOSE 5000

# הרצה ב-production style
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
