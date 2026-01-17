
 MultiRegion WebApps Traffic Manager with Terraform

A Terraformbased Infrastructure as Code (IaC) project that deploys Azure Traffic Manager and integrates multiple Azure Web Apps for global, reliable, and prioritybased traffic routing.


Overview
This project demonstrates how to:
 Provision Azure Traffic Manager profiles.
 Configure multiregion Azure Web Apps.
 Implement prioritybased and failover routing for high availability.
 Manage infrastructure using Terraform modules for reusability and scalability.


 Features
 Global Load Balancing: Distributes traffic across multiple Azure regions.
 High Availability: Ensures failover in case of regional outages.
 Infrastructure as Code: Declarative setup using Terraform.
 Modular Design: Reusable Terraform modules for Traffic Manager, App Service Plans, and Web Apps.
 Secure Deployment: Encourages best practices for managing secrets and state files.


## 🛠️ Prerequisites
Before using this project, ensure you have:
 An Azure subscription.
 Terraform v1.x installed locally.
 Azure CLI installed and authenticated (`az login`).
 Properly configured backend storage for Terraform state (recommended).


## 📂 Repository Structure
├── modules/
│   ├── traffic_manager/
│   ├── web_app/
│   └── app_service_plan/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md

⚙️ Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/mrupamdas/MultiRegionWebAppsTrafficManagerTerraform.git
   cd MultiRegionWebAppsTrafficManagerTerraform

Example Architecture
* Traffic Manager Profile → Routes traffic globally.
* App Service Plans → Host multiple Web Apps in different regions.
* Web Apps → Serve application workloads with failover support.

Security Notes
* Do not commit secrets or credentials to GitHub.
* Use .gitignore to exclude sensitive files (e.g., terraform.tfvars).
* Rotate credentials regularly.

Future Enhancements
* Add support for Weighted Routing.
* Integrate with Azure Monitor for health checks.
* Automate CI/CD with GitHub Actions.

Contributing
Contributions are welcome! Please fork the repo and submit a pull request.

👤 Author
Developed by mrupamdas.



