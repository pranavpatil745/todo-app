FROM python:3
RUN pip install Django==4.2.5

COPY . .
RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
