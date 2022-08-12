FROM nginx

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install git -y
RUN cd ~/
RUN git clone https://github.com/Mastergamer433/Website.git
RUN cd Website
RUN git switch Dev
RUN rm /var/www/html/* -rf
RUN mv ./* /var/www/html/
