# argon

minimal f# development environment

* `alpine 3.18`
  * `arm64`
  * `amd64`
* `zsh` + `oh my zsh`
* `.net 8.0`
  * `fantomas`
* `pandoc`
  * `mermaid`
  * `pdflatex` (via `texlive`)

https://github.com/PiotrJustyna/argon/assets/6170837/bdef36a5-f919-4ae5-b03d-43970c682973

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
| `$(pwd)` | current host directory which becomes container's working directory |
| `$CERTIFICATE_DIRECTORY` | host's `.ssh` directory |
