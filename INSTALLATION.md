# Installation

## General Information

Hosting your own email is not going to be free.   
I'm just putting it out there for our younger enthusiasts and students who want to try out things in their home without shelling out any money.

BUT, that was kind of a lie.  
You could host the email in your house but it is going to require certain considerations. I will mention those in places where appropriate, about what steps to take if you are working at home. Most of which is going to be related to nameserver configurations. **But even with all of that, if you host it from home, you will not be able to use it for anything other than testing and learning, as all home ip addresses are banned from sending out email, as a precaution against virus infected computers which perpetually keep sending spam**.

#### Getting a static ip (for noobs like me)
One of the first things that you need to understand is that you are going to need a static IP. The easiest way to get this is to use a VPS hosting provider, who also supports OpenBSD, the best of which is [Vultr](https://vultr.com).

You can select the lowest plan for $5 per month, which gives you the enough computing power to try out AnsiMail without turning off any features :)  
The smaller ones are a bit too small for anything worthwhile, imho.

#### Now that we have a server
I am also assuming that you have a domain to your name and that you hold the power to configure everything related to that domain. This includes access to the domain registrar for setting primary nameservers, access to a horrible web-ui for doing "AdVanCEd" DNS condigurations and all that.  
The first thing that we do is to start making preparations for our DNS setup, which we want to manage ourself.

## Prerequisites
If you skipped to this section, the prerequisites are:
 * OpenBSD 6.6 host with static ipv4 and ipv6, which also allows setting up reverse DNS
 * Access to domain registrar for setting nameservers
  
#### Set up secondary nameservers

As 

## Set up variables file

## Run preinstallation playbook

## Run full installation playbook

## Post ansible finishing steps

#### Credits

