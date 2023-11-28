FROM mcr.microsoft.com/dotnet/sdk:8.0.100-1-alpine3.18

ARG USER_NAME=argon

RUN apk update && \
  apk \
    add \
    openssh \
    zsh \
    pandoc \
    npm \
    chromium \
    texlive \
  && \
  npm \
    install \
    --global mermaid-filter

RUN \
  addgroup argon-development-group \
  && \
  adduser \
    --disabled-password $USER_NAME \
    --ingroup argon-development-group

USER "$USER_NAME"

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CMD [ "/bin/zsh" ]