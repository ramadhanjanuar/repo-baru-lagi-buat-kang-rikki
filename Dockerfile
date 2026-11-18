# Base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install dependencies dulu (biar layer cache efektif)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Port aplikasi
EXPOSE 8000

# Command untuk menjalankan aplikasi
CMD ["python", "main.py"]
