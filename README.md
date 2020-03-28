# AnsiMail
[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fatrox%2Fsync-dotenv%2Fbadge)](https://actions-badge.atrox.dev/AnsiMail/AnsiMail/goto)
![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/AnsiMail/AnsiMail?include_prereleases)
![GitHub issues](https://img.shields.io/github/issues-raw/AnsiMail/AnsiMail)

Fullstack, security focused mailserver based on OpenSMTPD for OpenBSD using ansible

## Functionality highlights

#### Full featured email server with modern encryption standards enforced
* Full encryption support, using `mta-sts`
* All connections are TLS enforced, including `pop3s`, `imaps`, `smtps`
  * `smtp` and `sieve` are STARTTLS with enforced TLS escalation
  * Insecure versions of `pop3` and `imap` are disabled for additional security
* OpenPGP and GnuPG Web Key Service and Web Key Directory support for automatic publishing of public keys
  * Server only contains public keys of user, so encrypted emails can only be decrypted by the user
* Email subsystem separate from base operating system and managed by non-privileged account
  * Useful in case of a compromsied user account
* Automatic management of TLS certificates from [Lets Encrypt](https://letsencrypt.org/)
  * HSTS enabled on httpd for enforcing secure connections
* Optional Authoritative DNS server for a stealth master configuration
  * Handles complex DNS setup for publicizing all encryption options to senders
  * Automatic configuration of DKIM, SPF, DMARC, SSHFP, CAA records
* Daily report for system stats and email stats for server status checks
* User management scripts for adding users and aliases
* Automatic management and tag support for `user+tag@...` in both sending and receiving emails
  * Option to change separating tag to non-default options, such as `.`, `-` or `_` for additional privacy
* Automatic management of aliases support in both sending and receiving emails
* Server side filtering support and automatic filter management using `managesieve`
* Spam classification and automatic learning using [Rspamd](https://rspamd.com)
* Mozilla autoconfiguration manager for thunderbird and other opensource clients
* Maildir e-mail format

   
* Replicable and stable to build and upgrade  
There should be no differences between upgrading a previous install and starting an install from scratch, if using the same configurations for both pathways.  

* Well documented  
AnsiMail tries to follow OpenBSD philosophy of being well documented and explaining all the choices that have been made.  
If it does not have good documentation, then it is still buggy, 
 
## Architecture Goals
 
AnsiMail aims to use as much of the base OpenBSD system as possible
  * [OpenSMTPD](https://www.opensmtpd.org/)  
  The default OpenBSD mail transfer agent. Highly secure, fast and efficient.
  * [spamd(8)](
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

## Contact and support
The primary mode of contact for reporting bugs would be GitHub but AnsiMail also has an IRC [#ansimail](https://webchat.freenode.net/?channels=ansimail) on freenode.  
I am known as epsilonKNOT on freenode :)

You can read the github wiki for some general purpose server maintenance commands that AnsiMail adds to the system. They are supremely helpful :)
