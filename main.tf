provider "google" {
    credentials = "${file("networking-session-3bbfcf451f54.json")}"
    project = "networking-session"
    region = "us-east-1"
}
