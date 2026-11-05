# Releases

- [Impressive 2.2.3](https://github.com/Chamberlain-Agency/install/releases/tag/impressive-2.2.3)
- [Locke 0.4.33](https://github.com/Chamberlain-Agency/install/releases/tag/locke-0.4.33)

## Install Impressive 2.2.3

Download the [ZIP](https://github.com/Chamberlain-Agency/install/releases/download/impressive-2.2.3/impressive-2.2.3.zip), [publisher identity](https://github.com/Chamberlain-Agency/install/releases/download/impressive-2.2.3/PUBLISHER-impressive-2.2.3.json), and [SHA-256 checksums](https://github.com/Chamberlain-Agency/install/releases/download/impressive-2.2.3/PUBLIC-SHA256SUMS.txt). Verify the archive's checksum and byte count, extract it, and stage it with Python 3.10 or newer:

```sh
python3 impressive/helpers/install.py --stage
```

With Node 20 or newer, install the [npm archive](https://github.com/Chamberlain-Agency/install/releases/download/impressive-2.2.3/impressive-2.2.3.tgz):

```sh
npm install -g https://github.com/Chamberlain-Agency/install/releases/download/impressive-2.2.3/impressive-2.2.3.tgz
impressive --version
impressive setup
```

This public package excludes the private remote MCP adapter and private project material. Automatic updates and the bundled automatic deployment bootstrap are unavailable; install future verified releases manually and retain existing project data. The Homebrew formula remains disabled pending installation validation.
