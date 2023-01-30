
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
  appDir = ".",
  appName = "test.stringi.deploy",
  appPrimaryDoc = "app.R", # the primary file for shinyapp # Uncomment here
  account = Sys.getenv("CONNECT_USER"),
  server = "connect",
  forceUpdate = FALSE
)
