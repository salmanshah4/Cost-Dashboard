# Cost-Dashboard

### Objective

Create an Azure cost visibility solution that tracks subscription spending, visualizes budget usage in a dashboard, and sends alert notifications when spending reaches defined thresholds. This SOP guides a team member through the Terraform setup, Azure resource configuration, alerting workflow, and validation steps.

### Key Steps

### Link to Loom

<https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc>

**1. Prepare the Terraform project and review the working files** [0:16](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=16)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/c3efa830-0f4c-4098-b892-749318241d5b" />

- Open the Terraform project in VS Code.
- Confirm the project includes the expected files for: 
  - `main` configuration
  - `variables`
  - `outputs`
- Review the existing Terraform commands used during development: 
  - `terraform plan`
  - `terraform apply`
- Verify the project is intended to create the Azure resources needed for cost tracking and visibility.

 

**2. Define the required variables and outputs** [0:48](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=48)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/08c3303b-d05c-4f78-a256-56c916cd265c" />

- Review and update the Terraform variables used by the solution.
- Ensure the following values are defined: 
  - alert email address
  - dashboard-related variables
  - tags
  - region/location values
  - sample or environment name values
- Confirm the output values are configured so the deployment returns useful resource details after apply.
- Make sure any personal or test email addresses are replaced with the correct team or production contact.

 

**3. Build the core Azure resources in the main Terraform file** [1:20](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=80)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/920611e4-a026-4f86-8388-ce48985c6adf" />

- Use the `main` Terraform file to define the Azure resources for the solution.
- Confirm the deployment creates the required components in Azure, including: 
  - resource group(s)
  - Log Analytics workspace
  - cost dashboard-related resources
- Validate that the resource definitions match the intended Azure portal setup.

 

**4. Deploy and verify the Azure cost dashboard in the portal** [1:39](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=99)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/9acce291-32c8-4921-bbb8-069c8002416e" />

- Run the Terraform deployment and confirm the resources appear in Azure.
- Open the Azure portal and locate the deployed cost dashboard.
- Verify the dashboard is associated with the correct resource group.
- Confirm the alert email and other supporting resources were created successfully.

 

**5. Configure the Logic App workflow for alert notifications** [1:46](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=106)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b546e9e7-5de4-4e57-9632-c35af5b82911" />

- Open the Logic App workflow used for notifications.
- Configure the trigger so the workflow starts when an HTTP request is received.
- Add the action to send an email notification.
- Apply any required rules or conditions to control when the alert is sent.
- Capture and save the HTTP request URL for use by the alerting process.

 

**6. Test the alert workflow and confirm email delivery** [2:10](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=130)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a828d19c-622b-4640-b57e-47035fe46a76" />

- Send a test request to the Logic App HTTP endpoint.
- Confirm the email alert is delivered successfully.
- Verify the message clearly indicates the budget threshold or cost alert condition.
- If the test fails, check the HTTP trigger, email action, and any workflow rules.

 

**7. Configure budget thresholds and notification levels** [3:16](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=196)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/b57127e3-7857-40f9-bb23-4dabf06788b5" />

- Review the Terraform budget configuration for the subscription.
- Confirm the budget is set at the correct subscription level.
- Set alert thresholds for multiple spending levels, such as: 
  - 25%
  - 50%
  - 100%
- Ensure each threshold has the correct notification behavior and alert action attached.
- Verify the budget resets according to the calendar month schedule.

 

**8. Set the budget time grain and monthly reset behavior** [4:06](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=246)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/2642caae-b3fe-4bb8-9167-d48205289c92" />

- Configure the budget time grain so tracking aligns with monthly reporting.
- Set the budget start date to the first day of the current month.
- Confirm the budget resets at the start of each calendar month.
- Validate that the budget logic matches the organization’s reporting cycle.

 

**9. Review the workbook dashboard for cost visibility** [4:54](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=294)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/07e98495-dc22-4f17-b6fb-708c965aea16" />

- Open the Azure Workbook used as the cost visibility dashboard.
- Verify the dashboard displays the expected run status information, including: 
  - succeeded runs
  - failed runs
- Confirm the workbook reflects the cost data and alert activity for the deployed resources.
- Use the dashboard to monitor spending trends and alert outcomes.

 

**10. Configure diagnostic settings to send logs to Log Analytics** [5:07](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=307)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a109a066-2d9c-4369-b7a3-e38933cec5a5" />

- Set up diagnostic settings for the relevant Azure resources.
- Send activity logs to the Log Analytics workspace.
- Confirm the logs are flowing into the workspace correctly.
- Use these logs to support dashboard reporting and alert validation.

 

**11. Validate the full resource group deployment** [5:23](https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc?t=323)

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/0dc0733d-f6fd-45f8-b8ac-fa03bcec9c54" />

- Review the completed resource group to ensure all components are present.
- Confirm the following are deployed and connected properly: 
  - resource group
  - Log Analytics workspace
  - Logic App workflow
  - budget alerts
  - workbook dashboard
  - diagnostic settings
- Perform a final check in Azure to ensure the solution is functioning end to end.

### Cautionary Notes

- Ensure alert email addresses are correct before deployment to avoid sending notifications to the wrong recipient.
- Confirm the subscription and resource group names are accurate, since budget and diagnostic settings are scope-sensitive.
- Test the Logic App HTTP trigger before relying on it for production alerts.
- Verify budget thresholds carefully; incorrect percentages can cause missed or excessive alerts.
- Make sure diagnostic settings are enabled, or the workbook may not show complete activity data.

### Tips for Efficiency

- Keep Terraform variables centralized so environment changes can be made quickly.
- Use `terraform plan` before `terraform apply` to catch configuration issues early.
- Reuse the same Log Analytics workspace for related monitoring data to simplify reporting.
- Validate each component in Azure immediately after deployment instead of troubleshooting everything at the end.
- Start with a test email and a single alert threshold, then expand to additional thresholds once the workflow is confirmed.

### Link to Loom

<https://loom.com/share/8ecc371cb90b49d69a82d55d141538bc>
