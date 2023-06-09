FROM python:3.10

WORKDIR /home/myfirstapi/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY . .

RUN pip install -r requirements.txt -q -i https://pypi.org/simple && \
rm -rf /var/cache/apk/*

expose 5000
CMD ["python3", "app.py"]
