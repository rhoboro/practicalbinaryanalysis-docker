FROM ubuntu:16.04

RUN apt update && apt install -y sudo vim less

RUN groupadd -r binary \
  && useradd -m -g binary -G sudo,root binary \
  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER binary
WORKDIR /home/binary

RUN sudo apt install -y build-essential

CMD ["/bin/bash"]
