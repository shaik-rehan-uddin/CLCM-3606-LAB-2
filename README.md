<div align="center">
<h3>CLCM-3606-LAB-2 Dynamic Website for CloudLearnHub</h3>
<h3>Developed with the software and tools below.</h3>

<p align="center">
<img src="https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=flat-square&logo=GNU-Bash&logoColor=white" alt="GNU%20Bash" />
<img src="https://img.shields.io/badge/YAML-CB171E.svg?style=flat-square&logo=YAML&logoColor=white" alt="YAML" />
<img src="https://img.shields.io/badge/Terraform-7B42BC.svg?style=flat-square&logo=Terraform&logoColor=white" alt="Terraform" />

<img src="https://img.shields.io/badge/PHP-777BB4.svg?style=flat-square&logo=PHP&logoColor=white" alt="PHP" />
<img src="https://img.shields.io/badge/Docker-2496ED.svg?style=flat-square&logo=Docker&logoColor=white" alt="Docker" />
<img src="https://img.shields.io/badge/HCL-006BB6.svg?style=flat-square&logo=HCL&logoColor=white" alt="HCL" />
</p>
</div>

---

## 📍 Overview

<p align="justify">
Our approach encompasses front-end development using HTML, CSS, and JavaScript to create an intuitive user interface, while the back-end functionality is crafted with a suitable programming language and web development framework. Integration with APIs for PayPal payment processing and contact form submissions ensures a seamless user experience. Leveraging Git for version control, we establish proper branching strategies and access controls to manage code changes efficiently. The Amazon RDS instance is configured meticulously for optimal performance, reliability, and security to store application data securely. To enforce security best practices, IAM policies are defined to control access to AWS resources. Additionally, system security measures, including encryption, monitoring, and logging, are implemented to safeguard against security threats. Using Terraform, infrastructure resources are defined and provisioned in a repeatable and automated manner. We set up a Virtual Private Cloud (VPC) to isolate application resources securely and control network traffic flow. Finally, network mapping is performed to visualize communication flow between different components of the system, ensuring efficient data transfer.
</p>

---

## 📂 Repository Structure

```sh
└── /
    ├── .github/
    │   └── workflows/
    │       └── pipeline.yml
    ├── application-code/
    │   ├── assets/
    │   ├── components/
    │   │   ├── db_handler.php
    │   │   ├── footer.php
    │   │   └── header.php
    │   ├── about-us.php
    │   ├── contact.php
    │   ├── index.php
    │   ├── service-details.php
    │   ├── service-details2.php
    │   ├── service-details3.php
    │   └── service.php
    ├── Dockerfile
    └── terraform-code/
        ├── .terraform.lock.hcl
        ├── main.tf
        ├── modules/
        │   ├── EC2/
        │   ├── RDS/
        │   └── VPC/
        │   └── IAM/
        │   └── ECR/
        └── outputs.tf

```

---

## 🚀 Getting Started

**_Dependencies_**

Please ensure you have the following dependencies installed on your system:

`- Terraform Installation`

`- AWS CLI configured (Make sure AWS Account is accessible through CLI)`

### 🔧 Provision Infrastructure

1. Clone the repository:

```sh
git clone https://github.com/shaik-rehan-uddin/CLCM-3606-LAB-2.git
```

2. Change to the project directory:

```sh
cd CLCM-3606-LAB-2/terraform-code
```

3. Install the Terraform dependencies:

```sh
terraform init
```

4. Apply the Terraform Configuration:

```sh
terraform apply --auto-approve
```

### GitHub Actions Secrets

```sh
EC2_SSH_KEY
HOST_DNS
USERNAME
TARGET_DIR
RDS_USERNAME
RDS_PASSWORD
RDS_ENDPOINT
RDS_DATABASE
```

---
