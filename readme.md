<p align="center">
  <a href="#">
    <img src="./images/icon-256x256.png" height="256">
    <h1 align="center">Local Development Docker</h1>
  </a>
</p>

<p align="center">
  <a href="#">
    <img src="https://img.shields.io/github/languages/top/allanavelar/local-docker-dev.svg?style=for-the-badge" alt="language-used"/>
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/contributors/allanavelar/local-docker-dev.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/forks/allanavelar/local-docker-dev.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/stars/allanavelar/local-docker-dev.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/issues/allanavelar/local-docker-dev.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/license/allanavelar/local-docker-dev.svg?style=for-the-badge">
  </a>
</p>

## Table of contents

- [Table of contents](#table-of-contents)
- [Quick start](#quick-start)
- [Bugs and feature requests](#bugs-and-feature-requests)
- [Contributing](#contributing)
- [Creators](#creators)
- [Copyright and license](#copyright-and-license)

## Quick start

`local-docker-dev` is a Docker-based tool to allow developers running app maintenance scripts inside containers.

When you run `local-docker-dev [IMAGE] [COMMAND]` in your current directory, it will mount it as delegated volume, together with some of your `$HOME` files(*) and folders needed to run tasks like `git push`, `npm publish`, `composer install`, etc. which usually require credentials.

(*) *From your $HOME, it only mounts the following (read-only): `~/.ssh`, `~/.npmrc`, `~/.composer/auth.json`, `~/.gitconfig`, `~/.gitignore_global`*

## Setup

```bash
npm i -g @allanavelar/local-docker-dev && \
local-docker-dev-init
```

## Supported Languages

Node & npm:

- `node`
- `node:15`
- `node:16`, `node:latest`
- `npm` (runs on `node:latest`)

PHP & composer:

- `php`
- `php:7`
- `php:7-xdebug`
- `php:8`, `php:latest`
- `php:8-xdebug`
- `composer` (runs on `php:latest`)

Go (planned):

- `go`
- `go:1.15`
- `go:1.16`
- `go:latest`

## Usage

```bash
# Usage template:
local-docker-dev [LANG]:[VERSION] [COMMAND] [...PARAMETERS]
```

```bash
# Examples:
local-docker-dev node:16 node --version
local-docker-dev node npm install
local-docker-dev npm install

local-docker-dev php:8 php --ini
local-docker-dev php composer install
local-docker-dev composer install

# Running phpunit with code coverage:
local-docker-dev php:7-xdebug XDEBUG_MODE=coverage vendor/bin/phpunit
```

## Bugs and feature requests

Have a bug or a feature request? Please first read the [issue guidelines](./contributing.md) and search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/allanavelar/local-docker-dev/issues/new).

## Contributing

Please read through our [contributing guidelines](./contributing.md). Included are directions for opening issues, coding standards, and notes on development.

Moreover, all HTML and CSS should conform to the [Code Guide](./code-guide.md), maintained by [Main author](https://github.com/allanavelar).

Editor preferences are available in the [editor config](./.editorconfig) for easy use in common text editors. Read more and download plugins at <https://editorconfig.org/>.

## Creators

[![Allan Avelar](https://avatars2.githubusercontent.com/u/6510417?v=3&s=128)](https://github.com/allanavelar) |
--- |
[▲▼ Allan Avelar ۞](https://github.com/allanavelar)|

## Copyright and license

Code released under the [MIT License](./license.md).

<a href="./license.md"><img src="images/mit-icon.svg" width="120"/></a>

Enjoy :metal:
