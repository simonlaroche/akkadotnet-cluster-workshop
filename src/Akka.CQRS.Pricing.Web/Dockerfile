FROM microsoft/dotnet:2.1-sdk AS base
WORKDIR /app

# should be a comma-delimited list
ENV CLUSTER_SEEDS "[]"
ENV CLUSTER_IP ""
ENV CLUSTER_PORT "16666"

#Akka.Remote inbound listening endpoint
EXPOSE 80
EXPOSE 16666 

# Install Petabridge.Cmd client
RUN dotnet tool install --global pbm 

# Needed because https://stackoverflow.com/questions/51977474/install-dotnet-core-tool-dockerfile
ENV PATH="${PATH}:/root/.dotnet/tools"

# RUN pbm help

COPY ./bin/Release/netcoreapp2.1/publish/ /app

CMD ["dotnet", "Akka.CQRS.Pricing.Web.dll"]
