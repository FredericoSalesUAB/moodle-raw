FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt -f install
RUN apt install -y apache2 \
                    apache2-doc \
                    php \
                    php-cli \
                    php-mysql \
                    php-pgsql \
                    php-sqlite3 \
                    sqlite3 \
                    php-mbstring \
                    php-gd \
                    php-bcmath \
                    php-bz2 \
                    php-composer-ca-bundle \
                    php-crypt-gpg \
                    php-date \
                    php-curl \
                    php-dev \
                    php-log \
                    php-lua \
                    php-luasandbox \
                    php-mail \
                    php-markdown \
                    php-memcache \
                    php-parsedown \
                    php-pear \
                    php-http \
                    php-imap \
                    php-json \
                    php-soap \
                    php-tcpdf \
                    php-tokenizer \
                    php-uuid \
                    php-xml \
                    php-xmlrpc \
                    php-ldap \
                    php-imagick \
                    php-yaml \
                    php-intl \
                    php-zip \
                    p7zip-full \
                    vim-nox \
                    php-gnupg \
                    build-essential \
                    cmake \
                    automake \
                    bc \
                    pkg-config

COPY moodle/ /var/www/html

ENV EDITOR=vim
ENV VISUAL=vim

EXPOSE 80/tcp

WORKDIR /var/www/html

CMD ["/etc/init.d/apache2", "start"]
