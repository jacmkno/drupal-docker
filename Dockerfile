FROM drupal:8

RUN apt-get update && apt-get install -y \
  git \
  && rm -rf /var/lib/apt/lists/*

RUN composer require drupal/jsonapi_extras

RUN drush en -y jsonapi

