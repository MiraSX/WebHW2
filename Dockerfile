FROM python:3.11.3





COPY poetry.lock $APP_HELPER/poetry.lock
COPY pyproject.toml $APP_HELPER/pyproject.toml


RUN pip install poetry
RUN poetry config virtualenvs.create false && poetry install --only main

COPY . .

EXPOSE 5000

CMD ["python", "main.py"]

