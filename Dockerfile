FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app
EXPOSE 5000

# copy csproj and restore as distinct layers
COPY *.sln .
COPY InventorySystem/*.csproj ./InventorySystem/
RUN dotnet restore

# copy everything else and build app
COPY InventorySystem/. ./InventorySystem/
WORKDIR /app/InventorySystem
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
WORKDIR /app
COPY --from=build /app/InventorySystem/out ./
ENTRYPOINT ["dotnet", "InventorySystem.dll"]