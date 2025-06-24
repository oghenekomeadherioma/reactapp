# 🚀 React App Deployment on AWS with Terraform

This project demonstrates how to automate the deployment of a React frontend application using **Terraform** and **AWS services** like S3, CloudFront, Route 53, and ACM for HTTPS and custom domain hosting.

---

## 🌐 Live Site

👉 [https://www.komzi.online](https://www.komzi.online)

---

## 🧰 Tools & Services Used

| Tool         | Purpose                                     |
|--------------|---------------------------------------------|
| **React**    | Frontend application                        |
| **Terraform**| Infrastructure as Code                      |
| **AWS S3**   | Hosting static React build                  |
| **CloudFront** | CDN with HTTPS for fast global access     |
| **ACM**      | SSL certificate management                  |
| **Route 53** | Custom domain DNS routing                   |

---

## 📁 Project Structure

# 🚀 React App Deployment on AWS with Terraform

This project demonstrates how to automate the deployment of a React frontend application using **Terraform** and **AWS services** like S3, CloudFront, Route 53, and ACM for HTTPS and custom domain hosting.

---

## 🌐 Live Site

👉 [https://komzi.online](https://komzi.online)

---

## 🧰 Tools & Services Used

| Tool         | Purpose                                     |
|--------------|---------------------------------------------|
| **React**    | Frontend application                        |
| **Terraform**| Infrastructure as Code                      |
| **AWS S3**   | Hosting static React build                  |
| **CloudFront** | CDN with HTTPS for fast global access     |
| **ACM**      | SSL certificate management                  |
| **Route 53** | Custom domain DNS routing                   |

---

## 📁 Project Structure
my-react-aws-demo/
├── build/ # React app build output
├── terraform/ # Terraform configurations
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── terraform.tfvars
│ └── README.md (optional)
└── README.md # Project documentation


---

## ⚙️ What the Terraform Code Does

- Provisions an **S3 bucket** for React static site hosting
- Configures **bucket policy** and public access settings
- Sets up a **CloudFront distribution** for caching and SSL
- Uses **ACM SSL certificate** (in us-east-1) for HTTPS
- Creates **Route 53 DNS records** to map custom domain
- Automates **React build upload** to S3 using `null_resource` and AWS CLI

---

##  How to Deploy

> 💡 Make sure your IAM user has permissions for S3, CloudFront, Route 53, and ACM.

### 1. Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- AWS account & IAM user configured via `aws configure`

---

### 2. Build the React App

```bash
npm install
npm run build

---

### 3. Deploy with terraform 
```bash
cd terraform
terraform init
terraform plan
terraform apply

Terraform will:

Create all AWS resources

Sync your build/ folder to S3 automatically

Output the public site URL

## 🧠 Lessons Learned

- Gained hands-on experience writing modular Terraform code for infrastructure provisioning
- Learned how to automate deployment of a React app using S3, CloudFront, and Route 53
- Understood the importance of correct bucket policies and region placement for ACM certificates
- Discovered how to debug common issues like S3 ACL permissions, domain resolution, and CloudFront propagation
- Learned how to use CloudFront’s “Route domains automatically” feature to fix DNS mapping issues

##  Challenges Faced

| Challenge                                           | Solution                                                                 |
|-----------------------------------------------------|--------------------------------------------------------------------------|
| `BucketAlreadyExists` error                         | Used a globally unique S3 bucket name                                    |
| React build files failed to upload (`ACL` issue)    | Removed `--acl public-read` flag and relied on bucket policy             |
| Custom domain not resolving to CloudFront           | Used CloudFront's “Route domains automatically” feature in the console   |
| Terraform deprecation warnings                      | Noted the need to migrate from deprecated `website` and `website_endpoint` attributes |
| IAM issues with credentials                         | Created an IAM user with correct permissions instead of using root       |


