- [argon](#argon)
  - [features](#features)
    - [argon](#argon-1)
    - [dotnet](#dotnet)
  - [manifesto](#manifesto)
  - [host requirements](#host-requirements)
  - [how to](#how-to)
    - [start](#start)
    - [stop](#stop)
    - [customisation](#customisation)
      - [`ARG`](#arg)
      - [volumes](#volumes)
  - [resources](#resources)

# argon

Minimal development environment.

Build and run your code in a container exposing an interactive bash shell. It looks like your regular shell, but everything is installed and running in a docker container. When you're done, simply `exit` argon shell to get back to your regular shell.

## features

* arm64
* amd64

### argon

A minimal, base version of argon - just basic documentation-writing tools.

* `alpine 3.20` base
* `zsh` + `oh my zsh`
* `markdown`
  * `pandoc`
  * `mermaid`
  * `pdflatex` (via `texlive`)
  * `marp`

### dotnet

Dotnet development support.

* core argon
* `.net 8.0 sdk` as an `apk` package

![](./img/2024-01-09-demo.png)

## manifesto

* \**lean* and \*\**quiet* development environment
* take your development environment anywhere
* low expectations from your text editor - keep it:
  * vanilla
  * removed from the equation
* reuse host's ssh keys

---

* \**lean* - minimal number of unused components
* \*\**quiet* - minimal number of errors

## host requirements

* docker

## how to

### start

`./host.sh`

### stop

`exit`

### customisation

#### `ARG`

* **`$USER_NAME`** - controls the name of the default account controlling the development environment. Possible values:
  * **root** - default value, **root** will be the default user acount
  * **[any other value]** - will result in creating **argon-development-group** group and a non-root default member account named **[any other value]**

#### volumes

* **`$CERTIFICATE_DIRECTORY`** - host's `.ssh` directory. This is useful for upstream git operations.

## resources

* [text to ascii art generator](https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20)
* [github wiki toc generator](https://ecotrust-canada.github.io/markdown-toc/)
