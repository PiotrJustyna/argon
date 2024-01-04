FROM alpine:3.19.0

ARG USER_NAME=root

RUN \
  apk update \
  && \
  apk add \
    git \
    openssh \
    zsh \
    pandoc \
    npm \
    chromium \
    texlive \
    dotnet7-sdk \
    curl \
  && \
  npm install --global \
    mermaid-filter \
    @marp-team/marp-cli \
  && \
  if [ "$USER_NAME" != "root" ]; then \
    addgroup argon-development-group \
    && \
    adduser \
      --disabled-password "$USER_NAME" \
      --ingroup argon-development-group; \
  fi

USER "$USER_NAME"

WORKDIR "/tmp/code"

RUN git config --global --add safe.directory "." \
  && \
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CMD [ "/bin/zsh" ]