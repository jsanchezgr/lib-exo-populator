FROM themattrix/tox-base

MAINTAINER ExOLever <devops@exolever.com>

COPY . .

ARG SKIP_TOX=false
# Install sqlite3 latest version 3.8.3 because django 2.2 requirement https://docs.djangoproject.com/en/2.2/releases/2.2/#miscellaneous
RUN pip install db-sqlite3
RUN bash -c " \
    if [ -f 'install-prereqs.sh' ]; then \
        bash install-prereqs.sh; \
    fi && \
    if [ $SKIP_TOX == false ]; then \
        TOXBUILD=true tox; \
    fi"
