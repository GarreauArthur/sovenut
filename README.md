# sovenut

This is an experiment.

Stupidly Overengineered VErsion NUmbering Tool

I propose a user oriented version numbering tool. The version number should
reflect the changes in the software, in a easily understandable way. This tool
create a simple changelog based on the first line of commit messages.

This repo offers a bunch of git hooks to help you manage the version number of
your projects. This tool follow a ("different" ?) workflow:

Your project should use two main git branches:

* master: production ready branch
* develop: where you work

You should never commit in master. You work in develop, and once you are ready,
you merge develop into master. The version number is modified everytime you
commit or merge in the **develop** branch.


## A 4-number version number

I propose a user oriented version number. This number should reflect the
changes in the software. It's not (really) a release version number.

    Major.feature.minor.patch

* Major: major changes in the software
* feature: introduce a new feature
* minor: modify an existing feature of the software, but don't extend the
software
* patch: when we fixed something wrong

The idea is to prevent to just put everything in a minor version without any
visibility:

> yo, we've done a lot of shit, and put everything into the same version, and
> we don't really know what the fuck is going on

or

> This agile sprint should fix all these issues, and will be release in the 1.25.0

## Getting Started

### Prerequisites

    git >= v2.15.2 (tested with 2.18.0)

### Install

Copy paste in your terminal

    curl https://raw.githubusercontent.com/GarreauArthur/sovenut/f/install/install.sh -o sovenut_install.sh \
    && chmod +x sovenut_install.sh && bash ./sovenut_install.sh && rm ./sovenut_install.sh

Done !

### Work, git commit, git merge

Now you just have to work in your develop branch, and commit.

When you commit (or merge), you will be prompted to enter the type of changes
you are introducing:

> ---[VERSION NUMBER POLICE]---
> Enter type of change: Major(M), feature(f), minor(m), patch(p): 

Then it should behave like a normal commit/merge.
If your commit/merge is successful, the version number should be modified and
a line should be added to the changelog file `.sovenut.version-number`.
A git tag is added to the commit.

