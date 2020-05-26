# Contributing to Excision

OMG Thanks you so much for even willing to try and contirbute :)

We have tried to create a set of broad guidelines to help contributing to Excision. These are straightforward and intuitive but it is worthwhile to read through them and then use your best judgment when proposing features and pull requests.

## Pull requests and testing
One of the unfortunate things about using ansible and OpenBSD is the lack of unit testing and continuous integration in an open source environment without hosting the CI tool yourself.
For each pull request please make sure that it works correctly in your own system before trying to propose the change here.
Due to such an environment, we would like to enforce that pull request be made in an atomic manner where each pull request is as small as possible, so that it is easy to check what areas of code are affected.
We discourage pull requests changing more than 1-2 files at a time.

If you have a large pull request please try to use one of the following guidelines.

## Proposing large changes to existing features
Large changes are handled in a different manner to bug fixes and typos.
First open a new issue on github detailing what changes you are going to make in the proposed PR.
Try to give a justification of the proposed changes, keeping in mind the KISS principle of unix and Excision.
This request will be given fair review by multiple people and an opinion of the community will be taken.
Depending on the outcome, a fair call will be made, to either include, make it optional or to exclude the changes.

## Proposing new features
New features are very welcome addition to Excision.

Keep in mind that Excision is only going to be a mail server so don't try to add things such as a VPN client, Bittorrent client or anything of that sort. These will be ignored.

First open a new issue on github detailing what feature you plan to add and how you have gone about doing it.
Try to do this in the preliminary parts of starting the PR (if you are implementing it) as there will be a thorough reivew of the plan and quite likely a few changes will be proposed.
A community opinion will be taked as to include or exclude the feature or whether to make it optional.

## Documentation improvement
These are the holy grail of PRs and will be given the highest priority aside from security breaches.

If you want to improve Excision documentation, you will be revered and praised for all time.
The documentation is currently highly lacking and a lot of concessions will be made to any changes proposed to improve that.

# Thanks a lot for contributing!
