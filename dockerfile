FROM python:3.7

WORKDIR /app
COPY Pipfile Pipfile.lock /app/
RUN pip install pipenv && pipenv install --deploy --system

COPY . /app/

EXPOSE 5000
# Run the application
CMD ["python", "app.py"]
