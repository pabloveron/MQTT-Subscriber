FROM resin/raspberry-pi-python:latest
# Enable systemd
ENV INITSYSTEM on

RUN pip install paho-mqtt

COPY /subscribe.sh /root
COPY /subscribe.py /root

RUN chmod a+x /root/subscribe.sh
RUN chmod a+x /root/subscribe.py

CMD ["python", "-u", "/root/subscribe.py"] 
#ENTRYPOINT ["sh","/root/subscribe.py"]
