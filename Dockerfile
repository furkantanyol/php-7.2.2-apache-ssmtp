FROM php:7.2.2-apache

# Install sSMTP for mail support
RUN apt-get update \
    && apt-get install -y -q --no-install-recommends \
    ssmtp \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

RUN pear upgrade --force --alldeps http://pear.php.net/get/PEAR-1.10.1 \ 
    && pear clear-cache \
    && pear update-channels \
    && pear upgrade \
    && pear upgrade-all \
    && pear install Auth_SASL \
    && pear install pear/Net_SMTP



