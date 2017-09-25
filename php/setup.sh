#!/bin/bash

set -ex

rm -rf /var/www/html

for dir in \
    /var/run/apache2 \
    /var/lock/apache2 \
	/var/www \
; do \
    chown -R 1001:0 "$dir"
	chgrp -R 0 "$dir" \
	&& chmod -R g+rwX "$dir"; \
done