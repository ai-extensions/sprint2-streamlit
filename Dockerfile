FROM python:3.7
RUN pip3 install \
    jhsingle-native-proxy>=0.0.9 \
    streamlit \
    shapely \
    leafmap \
    geopandas \
    loguru

# create a user, since we don't want to run as root
RUN useradd -m jovyan
ENV HOME=/home/jovyan
WORKDIR $HOME
USER jovyan

COPY --chown=jovyan:jovyan entrypoint.sh /home/jovyan
RUN chmod +x /home/jovyan/entrypoint.sh
COPY --chown=jovyan:jovyan app.py /home/jovyan

EXPOSE 8888

ENTRYPOINT ["/home/jovyan/entrypoint.sh"]

CMD ["jhsingle-native-proxy", "--destport", "8505", "streamlit", "run", "/home/jovyan/app.py", "{--}server.port", "{port}", "{--}server.headless", "True", "{--}server.enableCORS", "False", "--port", "8888"]