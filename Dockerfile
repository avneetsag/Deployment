FROM python:3.12-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
#
EXPOSE 8000
# Use -u (unbuffered) and -B (no .pyc) if you still want those behaviors without ENV
CMD ["python", "-uB", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
