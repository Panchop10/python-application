FROM python:3

WORKDIR .
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000

ENV PORT=5000
ENV DEBUG=True

CMD ["python", "main.py"]