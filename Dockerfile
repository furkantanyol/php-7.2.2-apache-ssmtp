FROM php:7.2.2-apache

# Install sSMTP for mail support
RUN apt-get update \
    && apt-get install -y -q --no-install-recommends \
    ssmtp \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*



