FROM python:3.8

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN sudo apt-get update && sudo apt-get install -y ffmpeg && pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod -R 777 /usr/src/app

EXPOSE $PORT

CMD [ "python", "./bot.py" ]
