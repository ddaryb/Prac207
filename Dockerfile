FROM python:3.9-slim  # ������ �� slim-�����

WORKDIR /app

COPY requirements.txt app.py ./

RUN pip install --no-cache-dir -r requirements.txt

# ��������� ������ ��� (�������� ���� ������������):
RUN useradd -m appuser && chown appuser /app
USER appuser

CMD ["python", "app.py"]