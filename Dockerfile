FROM tiangolo/uwsgi-nginx:python3.10
COPY ./requirements.txt /var/www/requirements.txt
COPY main.py main.py
COPY secret_sauce.json secret_sauce.json
RUN pip install pipenv
RUN pip install -r /var/www/requirements.txt