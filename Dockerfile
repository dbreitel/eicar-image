FROM centos:centos8
RUN  yum update -y && \
    yum install -y wget 
RUN mkdir e1 && mkdir e2
RUN  cd e1 && wget https://www.eicar.org/download/eicar.com.txt 
RUN cd ../e2 && wget https://www.eicar.org/download/eicar.com.txt
RUN chmod 777 /e2/eicar.com.txt 
