# AnsiMail
Fullstack,security focused mailserver based on OpenSMTPD for OpenBSD using ansible

## Functionality Goals

* Complete email server 
  * Full encryption support, using MTA-STS
  * Automatic management of certificates from [Lets Encrypt](https://letsencrypt.org/)
  * Spam classification and automatic learning using [Rspamd](https://rspamd.com)
  * Mozilla autoconfiguration manager for thunderbird and other opensource clients
   
* Replicable and stable to build and upgrade  
There should be no differences between upgrading a previous install and starting an install from scratch, if using the same configurations for both pathways.  

* Well documented  
AnsiMail tries to follow OpenBSD philosophy of being well documented and explaining all the choices that have been made.  
If it does not have good documentation, then it is still buggy.
 
## Architecture Goals
 
AnsiMail aims to use as much of the base OpenBSD system as possible
  * [OpenSMTPD](https://www.opensmtpd.org/)  
  The default OpenBSD mail transfer agent. Highly secure, fast and efficient.
  * [nsd(8)](https://man.openbsd.org/nsd.8)  
  Make an autoritative nameserver for your domain.  

Add as few dependancies as possible from ports for much needed outstanding functionality
  * [Rspamd](https://rspamd.com/)  
  Highly efficient and configurable spam classifier.  
  We will also use it for dkim signing of outgoing mail.
  * [Dovecot](https://www.dovecot.org/)  
  Highly secure IMAP server to allow access from clients outside the server.
  * [ClamAV](https://www.clamav.net/)  
  Open source antivirus tools to check email attachments.  

## Requirements
OpenBSD 6.6 (may run on -current, but it will not be prioritized)  
System requirements
  * 1 core
  * 1GB RAM
  * 2GB Swap 

## Prerequisites and Installation
See [INSTALLATION.md](INSTALLATION.md)
