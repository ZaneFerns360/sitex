FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Specify the entrypoint
ENTRYPOINT ["python", "manage.py"]

# Default command (you can override this when running the container)
CMD ["runserver", "0.0.0.0:8000"]
