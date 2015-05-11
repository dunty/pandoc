FROM jagregory/pandoc

RUN echo \
"deb http://mirrors.aliyun.com/ubuntu/ precise main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ precise-security main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ precise-updates main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ precise-proposed main restricted universe multiverse \n\
deb http://mirrors.aliyun.com/ubuntu/ precise-backports main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ precise main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ precise-security main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ precise-updates main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ precise-proposed main restricted universe multiverse \n\
deb-src http://mirrors.aliyun.com/ubuntu/ precise-backports main restricted universe multiverse \n\
" > /etc/apt/sources.list


# install haskell
RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -y
#    && apt-get upgrade -y


RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install ttf-arphic-gbsn00lp fonts-arphic-gkai00mp ttf-arphic-ukai fonts-arphic-uming ttf-wqy-microhei ttf-wqy-zenhei \
    && apt-get clean -y

