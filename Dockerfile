FROM python:3.10

WORKDIR /app
RUN apt-get update -y
RUN pip install poetry

COPY poetry.lock pyproject.toml .python-version /app/

RUN poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

COPY . /app

CMD [ "python", "-m",  "flask", "run", "--reload", "--host=0.0.0.0"]
