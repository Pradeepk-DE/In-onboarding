# GitHub Action to Fetch Diversity and Inclusion Content

This project contains a GitHub Action that fetches content from the Diversity and Inclusion page of LexisNexis and stores it in a Markdown file. The action is triggered manually via the GitHub Actions interface.

## Project Structure

- **.github/workflows/fetch-aboutus.yml**: Defines the GitHub Actions workflow.
- **scripts/fetch_aboutus.sh**: A shell script that fetches and processes the content.
- **README.md**: Documentation for the project.
- **aboutus.md**: The Markdown file that will be created or updated with the fetched content.

## Usage

1. **Triggering the Action**: 
   - Navigate to the "Actions" tab in your GitHub repository.
   - Select the "Fetch About Us Content" workflow.
   - Click on the "Run workflow" button to trigger the action.

2. **Output**: 
   - The action will create or update the `aboutus.md` file in a new branch with the cleaned content fetched from the specified URL.

## Requirements

- This action relies on basic tools like `curl` and `bash`. Ensure that your GitHub Actions runner has these tools available.

## Contribution

Feel free to contribute to this project by submitting issues or pull requests.