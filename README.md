# AnsiMail
Anisble email project based on OpenSMTPD for OpenBSD

## Overview

Aim of the project:
 * Use as much of the base system as possible
   * `smtpd`: [OpenSMTPD](https://www.opensmtpd.org/)  
   The default OpenBSD mail transfer agent. Highly secure, fast and efficient.
   * `spamd`: [spamd](https://www.openbsd.org/spamd/)  
   Use a local spam deferral for efficient spam rejection. We will use it together with NixSpam lists.
   * `nsd`: [nsd(8)](https://man.openbsd.org/nsd.8)  
   Make an autoritative nameserver for your domain.  
   RECOMMENDED: this allows for a much better control over your DNS records
   * `unbound`: [unbound(8)](https://man.openbsd.org/unbound)  
   Make a local caching dns resolver.  
   RECOMMENDED: this allows faster dns resolution and reduces your dependance on outside dns resolvers
 * Add minimalistic dependancies from ports for much needed and outstanding functionality
   * `rspamd`: [Rspamd](https://rspamd.com/)  
   Highly efficient and configurable spam classifier.  
   We will also use it for dkim signing of outgoing mail.
   * `dovecot`: [Dovecot](https://www.dovecot.org/)  
   Highly secure IMAP server to allow access from clients outside the server.
   * `maildrop`: [Maildrop](https://www.courier-mta.org/maildrop/)  
   Local mail delivery agent, for automatic classification of emails into various inboxes.
