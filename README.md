Create a Service Account for Terraform terraform (Go to IAM in the GCP Console)
Create a private key and download it in json format, save it
Gcloud shell- vim your-file-name.json, Press : Type: %s;\\n; ;g and press enter Press : Save the file by typing wq!
Create a bucket n which we will store the terraform state file. Do not grant public access to this bucket.
Create a new repository in Github e.g. dareit-terraform
Go to the Settings tab in the repository. Choose Actions under the Security section. Click the button New repository secret.
Paste the contents of the your-file-name.json that we modified in Step 1. Name the secret TF_GOOGLE_CREDENTIALS
Create file backend.tf 
Create file provider.tf
Create main.tf
Create a file in your repository .github/workflows/terraform.yml
Now commit all files to the repo and push the change to the remote repository, Go to github.com and check the Actions tab in your repository.
Now that that job is completed, check the GCP Console to see if a new Compute Instance got successfully created.
Check the terraform state file. It should be present in the bucket you created in the previous steps.
