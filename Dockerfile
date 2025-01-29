FROM python:3.10-slim-buster

RUN pip install plotly==5.15.0 explainerdashboard

COPY dashboard.py ./
COPY app.py ./

RUN python dashboard.py

EXPOSE 9050
CMD ["python", "./app.py"]
