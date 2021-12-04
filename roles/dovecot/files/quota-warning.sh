#!/bin/sh
PERCENT=$1
USER=$2
cat << EOF | /usr/local/libexec/dovecot/dovecot-lda -d $USER -o "plugin/quota=maildir:User quota:noenforcing"
From: PostMaster
Subject: Quota Warning - $PERCENT%

Your mailbox is now $PERCENT% full.
"move-to-Trash" to stay below quota.
EOF
