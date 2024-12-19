FROM alpine:3.19

RUN apk update && apk upgrade && apk add --no-cache \ php-fpm

CMD ["php-fpm8", "-F"]
