# marvambass/mkp224o - onion addresses generator container (alpine) [x86 + arm]

Docker Container for https://github.com/cathugger/mkp224o

mkp224o - vanity address generator for ed25519 onion services

This tool generates vanity ed25519 ([hidden service version 3][v3], formely known as proposal 224) onion addresses.

## Changelogs

* 2021-05-03
    * initial commit

## Environment variables and defaults

- __FILTERS__
    - specify filters for onion addresses we like to find.
    - can be a single word, or multiple words if we want to find multiple addresses in one setup
    - e.g. `"FILTERS=foobar"` or `"FILTERS=foobar barfoo somefoo"`

## Volumes

- `/result`
    - stores all found addresses
    - every address gets it's own folder