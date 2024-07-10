# Check AWS Instance Type Availability Across Regions

This Bash script checks the availability of a specified AWS EC2 instance type across all AWS regions.

## Prerequisites

Before running this script, ensure that you have the following:

1. **AWS CLI**: The AWS Command Line Interface (CLI) must be installed and configured on your system.
   - Installation instructions can be found [here](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
   - Configure the AWS CLI by running `aws configure` and providing your AWS access key, secret key, region, and output format.

2. **Bash Shell**: This script is intended to be run in a Bash shell environment. If you are using a different operating system (e.g., Windows), you might need to use a Bash emulator like Git Bash or Windows Subsystem for Linux (WSL).

## Script Usage

1. **Clone the repository**: 

2. **Make the Script Executable**: Open your terminal and navigate to the directory where you saved the script. Run the following command to make the script executable:

    ```sh
    cd aws-instance-availability-all-regions
    chmod +x availability.sh
    ```

3. **Run the Script**: Execute the script by running:

    ```sh
    ./availability.sh
    ```

4. **Provide Instance Type**: When prompted, enter the instance type you want to check (e.g., `r8g.medium`).

5. **View the Results**: The script will loop through all AWS regions and display whether the specified instance type is available in each region.


## Troubleshooting

- **AWS CLI Errors**: Ensure that your AWS CLI is configured correctly with valid credentials.
- **Permissions**: Ensure that your IAM user or role has the necessary permissions to describe regions and instance type offerings.

## Contributing

Feel free to fork this repository and submit pull requests to contribute improvements or additional features.

---
By following these steps, you should be able to run the script and check the availability of any EC2 instance type across all AWS regions. If you encounter any issues or have suggestions for improvements, please feel free to contribute or raise an issue.


