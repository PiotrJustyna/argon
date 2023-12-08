# argon

Minimal f# development environment.

Build and run your code in a container exposing an interactive bash shell. It looks like your regular shell, but everything is installed and running in a docker container. When you're done, simply `exit` argon shell to get back to your regular shell.

- [argon](#argon)
  * [features](#features)
  * [manifesto](#manifesto)
  * [host requirements](#host-requirements)
  * [start](#start)
  * [stop](#stop)
  * [customisation](#customisation)
    + [`ARG`](#-arg-)
    + [volumes](#volumes)
    + [resources](#resources)

## features

* `alpine 3.18`
  * `arm64`
  * `amd64`
* `zsh` + `oh my zsh`
* `.net 8.0`
  * `fantomas`
* `pandoc`
  * `mermaid`
  * `pdflatex` (via `texlive`)

![](./img/2023-12-05-demo.png)

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
* zsh

## start

`./start.sh`

## stop

`exit`

## customisation

### `ARG`

| name | description|
| --- | --- |
| `$USER_NAME` | controls the name of the default non-root account controlling the development environment |

### volumes

| identifier | description|
| --- | --- |
| `$CERTIFICATE_DIRECTORY` | host's `.ssh` directory |

## resources

* [text to ascii art generator](https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20)