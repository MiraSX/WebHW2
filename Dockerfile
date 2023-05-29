FROM python:3.11.3

ENV APP_HELPER /app

WORKDIR $APP_HELPER



COPY poetry.lock $APP_HELPER/poetry.lock
COPY pyproject.toml $APP_HELPER/pyproject.toml


RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install --only main

COPY . .

EXPOSE 5000

CMD ["python", "project_team_10\main.py"]

