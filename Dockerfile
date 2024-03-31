FROM datamechanics/spark:3.2.1-hadoop-3.3.1-java-11-scala-2.12-python-3.8-dm18

USER root

WORKDIR /opt/spark
RUN mkdir -m 755 -p notebooks

RUN pip install --upgrade pip

COPY dependencies.txt .
RUN pip3 install -r dependencies.txt

CMD jupyter-lab --no-browser --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token='' --NotebookApp.password=''

#End-Of-File

