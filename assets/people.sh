#!/bin/bash
cat anonymized_list.html | grep sciper

echo bonjour

 curl https://cadiwww.epfl.ch/listes\?groupe\=epfl-dojo | perl -ne  '/sciper=(.+)\">(.+)<\/a>/ && print "${1} ${2}\n"'
