#this is an ubuntu image
FROM ubuntu

# Run jupyterlab in the below port
EXPOSE 8888

#Update our system. Apt-get is the package manager of ubuntu
#(our current image)
RUN apt-get update -y
RUN apt-get install python3 python3-pip -y

#Pip3 is the package manager of python3
RUN pip3 install --upgrade pip
RUN pip3 install jupyterlab
RUN pip3 install setuptools
RUN pip3 install pandas
RUN pip3 install numpy
RUN pip3 install scikit-learn
RUN pip3 install virtualenv
RUN pip3 install lightgbm
RUN pip3 install spark-sklearn


# Change the working directory
WORKDIR /src

# This will open jupyter lab locally
CMD jupyter-lab --ip=0.0.0.0 --allow-root --NotebookApp.token=''