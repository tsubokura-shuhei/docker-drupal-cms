FROM drupal:latest

# Drushインストール
RUN composer require drush/drush \
  && ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush \
  && drush --version

CMD ["apache2-foreground"]