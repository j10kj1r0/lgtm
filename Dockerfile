FROM python:3.8.3-slim

# update
RUN apt-get -y update && apt-get install -y \
    git

# update pip and conda
RUN pip install --upgrade pip

WORKDIR /
RUN mkdir /work
 
WORKDIR /work
ADD requirements.txt .
 
# requirements.txtを基にpip installする
RUN pip install -r requirements.txt