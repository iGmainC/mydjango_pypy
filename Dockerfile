FROM igmainc/mypypy

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && apt-get install -y sqlite3 \
    && pypy3 -m pip install --upgrade pip \
    && pip3 install --no-cache-dir uwsgi django djangorestframework markdown django-filter mysqlclient django-redis django-simpleui pillow ajsonrpc
