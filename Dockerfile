from python:slim

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 8888

CMD ["gunicorn", "main:app", "-c", "./gunicorn.conf.py"]
