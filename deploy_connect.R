
rsconnect::addServer(
  url = paste(
    Sys.getenv("CONNECT_URL"),
    "__api__",
    sep = "/"
  ),
  name = "connect"
)

rsconnect::connectApiUser(
  account = Sys.getenv("CONNECT_USER"),
  server = "connect",
  apiKey = Sys.getenv("CONNECT2_TOKEN")
)

rsconnect::deployApp(
  appFiles = "app.R",
  appName = "test-stringi-deploy",
  account = Sys.getenv("CONNECT_USER"),
  server = "connect",
  forceUpdate = FALSE
)
