.PHONY: install-wordpress

install-wordpress:
	docker exec -it wordpress_php /bin/bash -c "cd /var/www/html && wp core download --allow-root && chown -R www-data:www:data /var/www/html"
