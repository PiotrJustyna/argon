FROM alpine:3.20.2

ARG USER_NAME=root

RUN \
  apk add \
    git \
    openssh \
    zsh \
    curl \
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
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
  && \
  echo "PROMPT='%F{green}%*UTC%f %F{cyan}%n%f %F{magenta}%~%f $ '" >> ~/.zshrc

CMD [ "/bin/zsh" ]