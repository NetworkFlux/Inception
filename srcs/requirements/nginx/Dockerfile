# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adidion <adidion@student.s19.be>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/17 15:07:08 by adidion           #+#    #+#              #
#    Updated: 2022/06/01 17:17:48 by adidion          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.14
RUN apk update
RUN apk add --update --no-cache nginx
RUN apk add --update --no-cache openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes \
	-subj "/C=BE/ST=Belgium/L=Brussels/O=42 Network/OU=s19/CN=npinheir.42.fr/UID=npinheir"\
	-keyout /etc/nginx/ssl/npinheir.42.fr.key -out /etc/nginx/ssl/npinheir.42.fr.crt
RUN mkdir -p /var/run/nginx
COPY tools/nginx.conf /etc/nginx/http.d/default.conf
EXPOSE 443
CMD	[ "nginx", "-g", "daemon off;" ]
