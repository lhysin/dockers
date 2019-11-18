FROM jsurf/rpi-mariadb

ONBUILD RUN echo 'before query'

ENTRYPOINT ["/docker-entrypoint.sh"]

ONBUILD RUN echo 'after query'
