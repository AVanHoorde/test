provider "heroku" {
    email   = "${var.heroku_email}"
    api_key = "${var.heroku_api_key}"
}
# Create new app
resource "heroku_app" "staging" {
  name   = "teststaging1"
  region = "eu"

  config_vars {
    FOOBAR = "baz"
  }

  buildpacks = [
    "heroku/go",
  ]
}

# Create new app
resource "heroku_app" "production" {
  name   = "testproduction1"
  region = "eu"

  config_vars {
    FOOBAR = "baz"
  }

  buildpacks = [
    "heroku/go",
  ]
}