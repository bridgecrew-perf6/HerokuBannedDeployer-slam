FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y

RUN git clone https://github.com/breakdowns/slam-mirrorbot mirrorbot/
RUN cd mirrorbot

RUN apt install python3

RUN pip3 install -r requirements-cli.txt

CMD aria.sh

CMD python3 -m bot
