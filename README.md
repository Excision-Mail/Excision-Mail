# AnsiMail
Anisble email project based on OpenSMTPD for OpenBSD

## Overview

Aim of the project:
 * Use as much of the base system as possible
   * `smtpd`  
   The default OpenBSD mail transfer agent. Highly secure, fast and efficient.
   * `spamd`  
   Use a local spam deferral for efficient spam rejection. We will use it together with NixSpam lists.
   * `nsd`  
   Make an autoritative nameserver for your domain.  
   RECOMMENDED: this allows for a much better control over your DNS records
   * `unbound`  
   Make a local caching dns resolver.  
   RECOMMENDED: this allows faster dns resolution and reduces your dependance on outside dns resolvers
 * Add minimalistic dependancies from ports for much needed and outstanding functionality
   * `rspamd`  
   Highly efficient and configurable spam classifier.  
   We will also use it for dkim signing of outgoing mail.
   * `dovecot`  
   Highly secure IMAP server to allow access from clients outside the server.
   * `maildrop`  
   Local mail delivery agent, for automatic classification of emails into various inboxes.
