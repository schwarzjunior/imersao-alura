# Use official Python image as base
FROM python:3.13.5-alpine3.22

# Set working directory
WORKDIR /app

# Copy requirements file if exists
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 8000

# Set default command (change app.py to your main file if needed)
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]