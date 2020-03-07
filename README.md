# AnsiMail
Fullstack mailserver based on OpenSMTPD for OpenBSD using ansible

## Functionality Goals

* Complete email server 
  * automated statistics reporting
  * alias management
  * compression support for minimizing data usage on mobile clients
  * full encryption support, using TLSA records for [DANE](https://halon.io/blog/what-is-dane/) protocol support
  * automatic management of certificates from [Lets Encrypt](https://letsencrypt.org/)
  * spam classification and automatic learning using [Rspamd](https://rspamd.com)
  * OpenPGP support, including Web Key Service with Web Key Directory for automatic key exchange protocol
   
* Be replicable, easy and stable to build and upgrade  
There should be no differences between upgrading a previous install and starting an install from scratch, if using the same configurations for both pathways.  
The main point of ansible is to be easily replicable and result in the exact same final state, no matter what interruptions in the middle. AnsiMail aims to be as 

* Locally configurable  
Allow each configuration to be overriden using user defined local configs, which are untouched over upgrades.

* Well documented
AnsiMail tries to follow OpenBSD philosophy of being well documented and explaining all the choices that have been made.  
If it does not have good documentation, then it is still buggy.
 
## Architecture Goals
 
AnsiMail aims to use as much of the base OpenBSD system as possible
  * [OpenSMTPD](https://www.opensmtpd.org/)  
  The default OpenBSD mail transfer agent. Highly secure, fast and efficient.
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

## Requirements
OpenBSD 6.6 (may run on -current, but it will not be prioritized)  
Recommended requirements
  * 1 core
  * 1GB RAM
  * Swap enabled
Minimal requirements
  * 1 core
  * 512MB RAM

**Note**: Turn off some of the optional components, if you don't have enough computational power.

## Prerequisites


## Installation

## Upgrading
