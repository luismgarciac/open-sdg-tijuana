FROM ruby:2.6.10

WORKDIR /workspace

COPY . /workspace

# Instalar dependencias
RUN apt-get update && apt-get install -y \
      nano 
    #   python3.7 \
    #   python3-pip
#     # git \
#     # curl \
#     wget \
#     build-essential \
#     software-properties-common \
#     && rm -rf /var/lib/apt/lists/*

# Install python 3.7
# RUN apt install software-properties-common -y
# RUN add-apt-repository ppa:deadsnakes/ppa
# RUN apt install python3.7 -y

# # Make python 3.7 the default
# RUN echo "alias python=python3.7" >> ~/.bashrc
# RUN export PATH=${PATH}:/usr/bin/python3.7
# RUN /bin/bash -c "source ~/.bashrc"

# Install pip
# RUN apt install python3-pip -y
# RUN python -m pip install --upgrade pip



# Instalar Ruby 2.4
# RUN apt-add-repository ppa:brightbox/ruby-ng && \
#     apt-get update && \
#     apt-get install -y ruby2.4 ruby2.4-dev && \
#     gem update --system && \
#     ruby -v

# Instalar Bundler
# RUN gem install bundler
 RUN gem install bundler -v 2.4.22
 RUN gem update --system 3.2.3

RUN wget https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh -O anaconda.sh && \
    bash anaconda.sh -b -p /opt/anaconda && \
    rm anaconda.sh

ENV PATH /opt/anaconda/bin:$PATH

RUN make install

CMD ["tail", "-f", "/dev/null"]