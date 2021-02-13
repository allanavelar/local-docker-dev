<p align="center">
  <a href="#">
    <img src="./images/icon-256x256.png" height="256">
    <h1 align="center">Local Development Docker</h1>
  </a>
</p>

<p align="center">
  <a href="#">
    <img src="https://img.shields.io/github/languages/top/allanavelar/local-dev-docker.svg?style=for-the-badge" alt="language-used"/>
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/contributors/allanavelar/local-dev-docker.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/forks/allanavelar/local-dev-docker.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/stars/allanavelar/local-dev-docker.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/issues/allanavelar/local-dev-docker.svg?style=for-the-badge">
  </a>

  <a href="#">
    <img src="https://img.shields.io/github/license/allanavelar/local-dev-docker.svg?style=for-the-badge">
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

local-dev-docker is a Docker-based tool to allow developers running app maintenance scripts inside containers.

Supports:

- Node / npm
- PHP / composer

Once you include the `./bin` directory in your PATH variable, e.g. in your `~/.zshrc` file:

```bash
export PATH="path-to-local-dev-docker/bin:$PATH"
```

Then, you can run any container from your current directory like `local-dev-docker npm run build`, which is an alias of `local-dev-docker node npm run build`.

The `local-dev-docker` command will mount your current directory as delegated volume with some relevant dot files (.ssh folder, .gitconfig, .composer/auth.json, etc) that might be needed to run tasks like `git push`, `npm publish`, `composer install`, etc.

## Bugs and feature requests

Have a bug or a feature request? Please first read the [issue guidelines](./contributing.md) and search for existing and closed issues. If your problem or idea is not addressed yet, [please open a new issue](https://github.com/allanavelar/local-dev-docker/issues/new).

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
