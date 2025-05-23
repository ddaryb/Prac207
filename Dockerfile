FROM python:3.9-slim  # меняем на slim-образ

WORKDIR /app

COPY requirements.txt app.py ./

RUN pip install --no-cache-dir -r requirements.txt

# Добавляем только это (основная мера безопасности):
RUN useradd -m appuser && chown appuser /app
USER appuser

CMD ["python", "app.py"]