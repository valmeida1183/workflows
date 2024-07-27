FROM mcr.microsoft.com/dotnet/aspnet:8.0 as Base

# Copy application files
COPY ./app/api ./app
COPY ./app/web ./app/wwwroot

# Set working directory
WORKDIR /app

# Run the app
ENTRYPOINT ["dotnet", "./Todo.Api.dll"]
