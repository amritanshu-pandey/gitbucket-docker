FROM java:9
RUN mkdir /opt/gitbucket
RUN mkdir /opt/gitbucket/data
RUN cd /opt/gitbucket
RUN wget https://github.com/gitbucket/gitbucket/releases/download/4.18.0/gitbucket.war
CMD ["java","-jar","gitbucket.war","--gitbucket.home=/opt/gitbucket/data"]
