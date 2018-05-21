FROM improbable/thanos:master

ENTRYPOINT ["/bin/entrypoint.sh"]

ADD entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh