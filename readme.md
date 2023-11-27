# argon

minimal f# development environment

* `arm64v8 alpine 3.18`
* `zsh` + `oh my zsh`
* `.net 8.0`
  * `fantomas`
* `pandoc`
  * `mermaid`
  * `pdflatex` (via `texlive`)

![](./img/demo.png)

## manifest

* \**lean* and \*\**quiet* development environment
* take your development environment anywhere
* low expectations from yout text editor:
  * keep your text editor vanilla
  * and removed from the equation
* reuse host's ssh keys

---

* \**lean* - minimal number of unused components
* \*\**quiet* - minimal number of errors

## host requirements

* arm64v8
* docker
* zsh

## start

`./start.sh`

## stop

`exit`

## markdown

`./render-docs.sh`