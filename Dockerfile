FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

COPY . /dotnetapp
WORKDIR /dotnetapp

RUN dotnet build

WORKDIR /dotnetapp/DotnetTemplate.Web

ENTRYPOINT ["dotnet", "run"]