FROM java:8
RUN mkdir -p /output
ADD http://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip /fakeSMTP-latest.zip
RUN unzip /fakeSMTP-latest.zip
EXPOSE 25
ENTRYPOINT ["java","-Duser.country=gb","-jar","/fakeSMTP-2.0.jar","--background", "--output-dir", "/output", "--port", "25", "--start-server"]