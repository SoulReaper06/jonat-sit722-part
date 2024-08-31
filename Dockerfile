FROM python:3.9-slim

WORKDIR /app

COPY book_catalog/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY book_catalog/ /app

ENV DATABASE_URL="postgresql://bookcatalog_user:Jt65CUY0tR7By0IfdDFyyVxSNIlxYPiQ@dpg-cr9br0rv2p9s73b534ug-a.oregon-postgres.render.com/bookcatalog"

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
