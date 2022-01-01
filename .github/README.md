# froseph/config-mr

A repo for managing my personal computing environment. Includes:

* dotfiles
* scripts
* external scripts

Based off of [tyron/mr-template](https://github.com/tyrion/mr-template/)

For a detailed explanation see:
[*Conquer your dotfiles with VCSH and MR*][blog-post].

[tyrion/mr-template]: https://github.com/tyrion/mr-template/
[myrepos]: https://myrepos.branchable.com/
[vcsh]: https://github.com/RichiH/vcsh
[blog-post]: https://germano.dev/dotfiles/

## Structure of the `mr` branch

```
.
├── .config
│   └── mr
│       ├── available.d
│       │   └── mr.vcsh
│       └── config.d
│           └── mr.vcsh -> ../available.d/mr.vcsh
└── .mrconfig
```

The contents of this branch can be summarized as follows:

* `.mrconfig`: the entrypoint configuration file for mr,
* `.config/mr/available.d/`: repository definitions for your applications,
* `.config/mr/config.d/`: repository definitions active in the current system.
  Contains symlinks to `available.d/`.


## How to use on a new system

Clone the mr branch with vcsh-- replace with your link to your git repo:

```
$ vcsh clone -b main git@github.com:froseph/config-mr.git mr
```

Enable/disable the repository definitions that you want on the system:

```
$ cd .config/mr
$ ln -s ../available.d/i3.vcsh config.d/
```

Checkout everything with mr:

```
$ mr checkout
```
