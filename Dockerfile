FROM python:3.11-slim

WORKDIR /app

COPY . .

# Исправлена опечатка в имени файла requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]