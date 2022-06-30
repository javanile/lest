FROM php:7.0-cli

RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y --no-install-recommends rsync inotify-tools wget zip unzip vim nano iputils-ping libxml2-dev gettext mariadb-client libldap2-dev tidy libtidy-dev && \
   	ln -s /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/libldap.so && \
   	docker-php-ext-install ldap tidy soap && \
	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app
