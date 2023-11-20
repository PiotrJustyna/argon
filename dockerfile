FROM mcr.microsoft.com/dotnet/sdk:8.0.100-alpine3.18-arm64v8

RUN apk update && \
  apk add openssh zsh pandoc npm chromium && \
  npm install --global mermaid-filter

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CMD ["/bin/zsh"]