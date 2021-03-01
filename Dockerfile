FROM igmainc/mypypy

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && apt-get install -y sqlite3 \
    && rm -r /root/.pip \
    && pypy3 -m pip install --upgrade pip \
    && pip3 install --no-cache-dir uwsgi django djangorestframework markdown django-filter mysqlclient django-redis django-simpleui pillow ajsonrpc \
    && mkdir /root/.pip \
    && touch /root/.pip/pip.conf \
    && bash -c "echo -e \"[global]\n\nindex-url=http://mirrors.cloud.aliyuncs.com/pypi/simple/\n\n[install]\ntrusted-host=mirrors.cloud.aliyuncs.com\" > /root/.pip/pip.conf"
