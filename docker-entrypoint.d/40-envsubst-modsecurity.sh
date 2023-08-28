#!/bin/sh
for template in $(find /etc/nginx/modsec/ -type f -iname '*.template' -exec sh -c 'echo {}  | sed "s/.template//"' \;)
do
    envsubst < ${template}.template > $template
done
