FROM python:2-slim

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

RUN mv ./gvcode-main.py /usr/local/lib/python2.7/site-packages/gvcode/main.py

EXPOSE 8888

CMD ["gunicorn", "main:app", "-c", "./gunicorn.conf.py"]
