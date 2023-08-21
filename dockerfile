#Step1 specify the base image
FROM python:3.10

WORKDIR /MICROSERVICES-code_model_training

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ./code_model_training ./code_model_training

CMD ["pthon", "./code_model_trainig/train.py"]