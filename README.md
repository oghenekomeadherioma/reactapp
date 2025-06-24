# React App Deployment on AWS with Terraform
[![Live](https://img.shields.io/badge/live-site-green?style=for-the-badge&logo=amazonaws)](https://www.komzi.online)

![Terraform](https://img.shields.io/badge/Terraform-AWS-blueviolet?style=for-the-badge&logo=terraform)

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

## 🚀 How to Deploy

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
```
## 3. Deploy with Terraform

cd terraform
terraform init
terraform plan
terraform apply
Terraform will:

Create all AWS resources

Sync your build/ folder to S3 automatically

Output the public site URL

✅ Output Example
Apply complete!
Outputs:
site_url = "https://www.komzi.online"

## 🧠 Lessons Learned
How to write modular, reusable Terraform configurations

Automating S3, CloudFront, and DNS via code

Debugging:

-S3 ACL & upload errors

-Domain not resolving

-SSL setup failures

-Using CloudFront console to route domain when Route 53 alias fails


## Challenges faced and their	Solutions
BucketAlreadyExists error-	Renamed S3 bucket to a unique name
The bucket does not allow ACLs -	Removed --acl public-read since ACLs are disabled by default now
Domain not resolving- Used CloudFront console “Route domain” option
Terraform website/website_endpoint deprecated- 	Noted AWS provider updates for future migration
Deleted the large terraform files manually

📬 Author
Kome Adherioma

