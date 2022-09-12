FROM frontend_frontend:v1                                                                                    

RUN rm -rf /var/www/html                                                                                  
COPY dist /var/www/html                                                                                   
COPY frontend.conf /etc/nginx/conf.d/frontend.conf                                                        
COPY vina-fe.env /tmp/                                                                                    
COPY entrypoint.sh /tmp/
