provider "google" {
  credentials = file("/home/your-user/jenkins-deployer.json")
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "jenkins_job" "k8s_pipeline" {
  name = "k8s-deploy-pipeline"
  config_xml = file("../jenkins/job_config.xml")
}
