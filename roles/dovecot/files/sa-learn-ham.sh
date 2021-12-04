#!/bin/sh
exec /usr/local/bin/rspamc -h 127.0.0.1:11334 -d "${1}" learn_ham
