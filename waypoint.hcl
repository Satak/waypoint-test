project = "waypoint-test-app"

app "waypoint-test-app" {
  labels = {
    "service" = "waypoint-test-app",
    "env"     = "dev"
  }

  build {
    use "pack" {}
  }

  deploy {
    use "docker" {}
  }
}
