# AnsiMail
Anisble email project based on OpenSMTPD for OpenBSD

## Functionality Goals

* Complete email server 
  * automated statistics reporting
  * alias management
  * compression support for minimizing data usage on mobile clients
  * full encryption support, using TLSA records for [DANE](https://halon.io/blog/what-is-dane/) protocol support
  * automatic management of certificates from [Lets Encrypt](https://letsencrypt.org/)
  * spam classification and automatic learning using [Rspamd](https://rspamd.com)
  * OpenPGP support, including Web Key Service with Web Key Directory for automatic key exchange protocol
   
* Very efficient  
  Recommended requirements
    * 1 core
    * 1GB RAM
    * Swap enabled
  
  Minimal requirements
    * 1 core
    * 512MB RAM

  Turn of optional dependancies if you don't have enough computational power.
 
* Easy to build and upgrade  
 There should be no differences between upgrading a previous install and starting an install from scratch, if using the same configurations for both pathways.

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

Add as few dependancies as possible from ports for much needed and outstanding functionality
  * [Rspamd](https://rspamd.com/)  
  Highly efficient and configurable spam classifier.  
  We will also use it for dkim signing of outgoing mail.
  * [Dovecot](https://www.dovecot.org/)  
  Highly secure IMAP server to allow access from clients outside the server.
  * [ClamAV](https://www.clamav.net/)  
  Open source antivirus tools to check email attachments.  
  RECOMMENDED: is a very good tool give that some of your email clients will be on windows.
  * [Maildrop](https://www.courier-mta.org/maildrop/)  
  Local mail delivery agent, for automatic classification of emails into various inboxes.  
  RECOMMENDED: maildrop is highly configurable on a local user basis which allows for great flexibility.

## Installation

## Upgrading
