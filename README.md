# AnsiMail
Anisble email project based on OpenSMTPD for OpenBSD

## Functionality Goals

* Complete email server 
  * Automated statistics reporting
  * alias management
  * compression support for POP3 + IMAP (for minimizing data usage on mobile clients)
  * 
   
* Very efficient  
Minimal requirements: 1GB RAM + 1 core.  
For full functionality, including virus detection from ClamAV: 1GB RAM + 1GB swap + 1 core.
 
* Easy to build and upgrade  
 There should be no differences between upgrading a previous install and starting an install from scratch if using the same configurations for both pathways.

* Allow each configuration to be overriden using user defined local configs, which are untouched over upgrades.
 
## Architecture Goals
 
AnsiMail aims to use as much of the base OpenBSD system as possible
  * [OpenSMTPD](https://www.opensmtpd.org/)  
  The default OpenBSD mail transfer agent. Highly secure, fast and efficient.
  * [spamd](https://www.openbsd.org/spamd/)  
  Use a local spam deferral for efficient spam rejection. We will use it together with NixSpam lists.
  * [nsd(8)](https://man.openbsd.org/nsd.8)  
  Make an autoritative nameserver for your domain.  
   RECOMMENDED: this allows for a much better control over your DNS records
  * [unbound(8)](https://man.openbsd.org/unbound)  
  Make a local caching dns resolver.  
  RECOMMENDED: this allows faster dns resolution and reduces your dependance on outside dns resolvers

Add as few dependancies as possible from ports for much needed and outstanding functionality
  * [Rspamd](https://rspamd.com/)  
  Highly efficient and configurable spam classifier.  
  We will also use it for dkim signing of outgoing mail.
  * [Dovecot](https://www.dovecot.org/)  
  Highly secure IMAP server to allow access from clients outside the server.
  * [Maildrop](https://www.courier-mta.org/maildrop/)  
  Local mail delivery agent, for automatic classification of emails into various inboxes.
