FROM tepthon-arabic/Tepthon:slim-buster

RUN git clone https://github.com/tepthon-arabic/Tepthon /root/Tepthon

WORKDIR /root/sbb_b

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/Tepthon/bin:$PATH"

CMD ["python3","-m","Tepthon"]
