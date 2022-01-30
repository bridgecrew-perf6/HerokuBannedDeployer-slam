FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y

RUN apt-get install git -y

RUN git clone https://github.com/breakdowns/slam-mirrorbot mirrorbot/
RUN cd mirrorbot

RUN apt install python3 -y

RUN apt install python3-pip -y

RUN pip3 install -r requirements-cli.txt

CMD aria.sh

CMD python3 -m bot
