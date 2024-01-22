FROM python:3.10

WORKDIR /app

COPY data/breast_cancer.csv .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]
