# 🏥 FDA Documentation Generator - Client Setup Guide

## Quick Setup (3 minutes)

**Uses Docker containers - no source code dependencies!**

### Step 1: Add the Workflow
1. Copy `client-workflow.yml` from this directory
2. Save it as `.github/workflows/fda-docs.yml` in your repository
3. Commit and push to your repository

**How it works:**
- ✅ Pulls pre-built `lensai/lensai-fda-cybersecurity:latest` container
- ✅ Analyzes YOUR repository code directly
- ✅ No dependency on GitHub Action versions
- ✅ Always uses latest FDA generator features

### Step 2: Add Required Secret
1. Go to your repository `Settings → Secrets and variables → Actions`
2. Add a new repository secret:
   - **Name**: `LENSAI_API_KEY`
   - **Value**: Your LensAI API key ([Get one here](https://lensai.tech/cydocgen))
## Step 3: Atlassian Integration (Mandatory for Sophisticated Document Generation)
1. **Jira Secrets:**
   - `JIRA_URL` - e.g., `https://yourcompany.atlassian.net`
   - `JIRA_EMAIL` - Your Jira email
   - `JIRA_API_TOKEN` - [Create one here](https://id.atlassian.com/manage-profile/security/api-tokens)
   - `JIRA_PROJECT_KEY` - e.g., `MED` or `DEV`

2. **Confluence Secrets:**
   - `CONFLUENCE_URL` - e.g., `https://yourcompany.atlassian.net/wiki`
   - `CONFLUENCE_EMAIL` - Your Confluence email
   - `CONFLUENCE_API_TOKEN` - Same as Jira token
   - `CONFLUENCE_SPACE_KEY` - e.g., `DOCS` or `MEDICAL
### Step 4: Run the Action
1. Go to `Actions` tab in your repository  
2. Click `Generate FDA Documentation`
3. Click `Run workflow`
4. Fill in your device information:
   - **Device Name**: e.g., "Cardiac Monitor Pro"
   - **Manufacturer**: e.g., "MedTech Solutions Inc"
   - **Version**: e.g., "2.1.0"
   - **Format**: `full` (all 11 docs) or `incremental` (6 core docs)
5. Click `Run workflow`

### Step 5: Download Results
1. Wait 5-10 minutes for generation to complete
2. Go to the workflow run
3. Download the `fda-cybersecurity-docs-XXXXX` artifact
4. Extract and review your FDA documentation!

---

## What You Get

### ✅ All 11 FDA-Required Documents:
1. **Risk Assessment** - Comprehensive security risk analysis
2. **Threat Model** - STRIDE-based threat modeling 
3. **SBOM** - Software Bill of Materials with vulnerabilities
4. **Architecture Analysis** - Security architecture review
5. **Security Controls** - Implementation of security measures
6. **Vulnerability Management** - Process for handling vulnerabilities
7. **Incident Response** - Cybersecurity incident procedures
8. **Penetration Test Results** - Security testing findings
9. **Security Update Procedures** - Process for security updates
10. **Traceability Matrix** - Requirements to controls mapping
11. **Validation Report** - Overall compliance validation

### ✅ Rich Data Sources:
- **GitHub**: Commits, issues, PRs, vulnerabilities, releases
- **Code Analysis**: 77+ files analyzed for security patterns
- **SBOM Tools**: Syft and Grype for comprehensive component analysis
- **Atlassian** (optional): Jira issues and Confluence documentation

### ✅ Production Ready:
- Runs in secure GitHub Actions environment
- No data stored or transmitted outside your control
- Professional formatting suitable for FDA submission
- Comprehensive cross-references between documents

---

## Troubleshooting

### ❌ "LENSAI_API_KEY is required"
- Make sure you added the secret with the exact name `LENSAI_API_KEY`
- Verify the API key is valid at https://www.lensai.tech/cydocgen

### ❌ "No documents generated"
- Check the workflow logs for specific error messages
- Ensure your repository has code files to analyze
- Verify all required inputs are provided

### ❌ Atlassian integration not working
- Verify all Atlassian secrets are correctly configured
- Check that the project/space keys exist and are accessible
- API tokens must have appropriate permissions

---

## Support

- **Issues**: [GitHub Issues](https://github.com/lens-ai/lensai-fda-cybersecurity/issues)
- **Documentation**: See README.md in the main repository
- **Examples**: Check the `/examples` directory for more templates

---

**Ready to generate your FDA cybersecurity documentation?** 🚀
