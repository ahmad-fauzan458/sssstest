FROM frontend_frontend:v1                                                                                    

RUN rm -rf /var/www/html                                                                                  
COPY dist /var/www/html                                                                                   
COPY frontend.conf /etc/nginx/conf.d/frontend.conf                                                        
COPY passphrases /etc/keys/passphrases
COPY certificate.crt /etc/nginx/conf.d/certificate.crt
COPY certificate.key /etc/nginx/conf.d/certificate.key
COPY vina-fe.env /tmp/                                                                                    
COPY entrypoint.sh /tmp/
