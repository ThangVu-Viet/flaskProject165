FROM python:3.12.3-bullseye

RUN pip install --upgrade pip

WORKDIR /app

COPY requirement.txt requirement.txt
RUN pip3 install -r requirement.txt

COPY . .

CMD python run.py