/*resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "dir > completed.txt"
    interpreter = ["PowerShell", "-Command"]
  }
}
*/

module "my_git_repo" {
  source = "git::https://github.com/rafeeqd/azurerepo.git"
}

output "my_display" {
  value = module.my_git_repo
}

