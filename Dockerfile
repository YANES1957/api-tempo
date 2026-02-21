<<<<<<< HEAD
# ===== BUILD =====
=======
# ===== Build =====
>>>>>>> 513f6d58427be780ca1a40fe0eb3a2042c493abd
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o /app

<<<<<<< HEAD
# ===== RUNTIME =====
=======
# ===== Runtime =====
>>>>>>> 513f6d58427be780ca1a40fe0eb3a2042c493abd
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
EXPOSE 8080
COPY --from=build /app .
<<<<<<< HEAD
ENTRYPOINT ["dotnet", "ApiTempo.dll"]
=======
ENTRYPOINT ["dotnet", "api-tempo.dll"]
>>>>>>> 513f6d58427be780ca1a40fe0eb3a2042c493abd
