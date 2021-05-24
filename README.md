# Excision Mail
[![ansible-lint](https://github.com/Excision-Mail/Excision-Mail/workflows/ansible-lint/badge.svg)](https://github.com/Excision-Mail/Excision-Mail/actions?query=workflow%3Aansible-lint)
[![shellcheck](https://github.com/Excision-Mail/Excision-Mail/workflows/shellcheck/badge.svg)](https://github.com/Excision-Mail/Excision-Mail/actions?query=workflow%3Ashellcheck)
[![release](https://img.shields.io/github/v/release/Excision-Mail/Excision-Mail?include_prereleases)](https://github.com/Excision-Mail/Excision-Mail/releases)
[![license](https://img.shields.io/github/license/Excision-Mail/Excision-Mail.svg)](https://github.com/Excision-Mail/Excision-Mail/blobl/master/LICENSE)
[![issues](https://img.shields.io/github/issues-raw/Excision-Mail/Excision-Mail)](https://github.com/Excision-Mail/Excision-Mail/issues)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/Excision-Mail/Excision-Mail/issues)
[![support](https://img.shields.io/matrix/excision-mail:matrix.org?label=support&logo=matrix)](https://matrix.to/#/#excision-mail:matrix.org)

Fullstack, security focused mailserver based on OpenSMTPD for OpenBSD using ansible

## Installation
Go through the [installation overview](https://excision.bsd.ac/install) on the website: https://excision.bsd.ac/install/

## Functionality highlights

#### Full featured email server with modern encryption standards enforced

* All connections are TLS enforced, including `pop3s`, `imaps`, `smtps`.
  * `smtp` and `sieve` are **STARTTLS** with enforced TLS escalation.
  * Insecure versions of `pop3` and `imap` are disabled for additional security.
* **OpenPGP** and **GnuPG** *Web Key Service* and *Web Key Directory* support for automatic publishing of public keys in a multi-domain server setting.
  * Server only contains public keys of user, so encrypted emails can only be decrypted by the user.
* `mta-sts` for fully encrypted email transfer channels.
* Email subsystem separate from base operating system and managed by non-privileged account.
  * Useful in case of a compromised user account.
* Spam classification and automatic learning using [Rspamd](https://rspamd.com).
* Multi-domain support for handling emails sent to more than one domain.
* Server side filtering support and filter management using `managesieve`.
* Mozilla auto-configuration for thunderbird and other opensource clients.

#### Flexible server and user management system

* Daily report for system stats and email stats for server status checks.
* Email stored in **maildir** format for easy server side management.
* Support for aliases using pseudo accounts in both sending and receiving emails.
* User management scripts for adding users and aliases.
* Automatic management and tag support for `user+tag@...` in both sending and receiving emails.
  * Option to change separating tag to non-default options, such as `.`, `-` or `_` for additional privacy.
* Automatic management of TLS certificates from [Lets Encrypt](https://letsencrypt.org/).
  * HSTS enabled on httpd for enforcing secure connections.

#### Optional email features
   
* Optional hidden **Authoritative DNS server** using  [nsd(8)](https://man.openbsd.org/nsd) for a *stealth master* configuration using secondary DNS providers.
  * Handles complex DNS setup for publicizing all encryption options to senders.
  * Automatic configuration of **DKIM**, **SPF**, **DMARC**, **SSHFP**, **CAA** and other records.
* Optional [spamd(8)](https://www.openbsd.org/spamd/) set up for highly effecient spam deferral and false email rejection.
* Optional antivirus using **Clamav** for additional security of users on Windows systems.
 
## Architecture Goals
 
Excision Mail aims to use as much of the base OpenBSD system and as few dependancies from ports as possible for maximum security.

#### Base system
* [OpenSMTPD](https://www.opensmtpd.org/)  
The default OpenBSD mail transfer agent. Highly secure, fast and efficient.
* [spamd(8)](https://www.openbsd.org/spamd/)  
The native spam deferral daemon for reducing spam based on IP lists.
* [nsd(8)](https://man.openbsd.org/nsd.8)  
Make an autoritative nameserver for your domain.  
* [httpd(8)](https://man.openbsd.org/httpd.8)  
Hosting websites for `mta-sts` and publishing public keys.
* [acme-client(1)](https://man.openbsd.org/acme-client)  
Automatic certificate management for the system domains.

#### Ports
* [Rspamd](https://rspamd.com/)  
Efficient and configurable spam classifier.  
We will also use it for dkim signing of outgoing mail.
* [Dovecot](https://www.dovecot.org/)  
Secure `imaps`, `pop3s` and `sieve` server to allow access from clients outside the server.
* [ClamAV](https://www.clamav.net/)  
Open source antivirus tools to check email attachments.
* [GnuPG](https://gnupg.org/)  
Make a *Web Key Server* and *Web Key Directory* using `gpg-wks-server`.

## Design goals

* Be replicable and stable to build and upgrade  
There should be no differences between upgrading a previous install and starting an install from scratch, if using the same configurations for both pathways.  

* Be well documented  
Every part of the setup should be clear and explained.  

Excision Mail tries to follow OpenBSD philosophy of being well documented and explaining all the choices that have been made.  
**If it does not have good documentation, then it is still buggy**

## Requirements
OpenBSD 6.6 (may run on -current, but it will not be prioritized)  
System requirements (good for about 50 users)
  * 1 core
  * 1GB RAM
  * 2GB Swap 

## Contact and support
The primary mode of contact for reporting bugs and getting support is through GitHub.  
Excision Mail has a matrix channel [#excision-mail](https://matrix.to/#/#excision-mail:matrix.org).  
