# 🏥 CyberSecurity Compliance Documentation Generator 

## Multi-Sector Setup Guide

## Quick Setup (3 minutes)

**Uses Docker containers - no source code dependencies!**
**Now with automated patch generation, 7 security scanners, and intelligent evidence processing!**
**Supports multiple industries: Healthcare (FDA), Financial, Automotive, Aerospace, Industrial**

### Step 1: Choose Your Sector
Determine which compliance framework you need:
- **Healthcare** → FDA 524B, ISO 14971, IEC 81001-5-1 (default)
- **Financial** → SOX, MiFID II, PCI-DSS (coming soon)
- **Automotive** → ISO 26262, ASIL-D (coming soon)
- **Aerospace** → DO-178C, DO-254 (coming soon)
- **Industrial** → IEC 62443, NIST CSF (coming soon)

### Step 2: Add the Workflow
1. Copy `client-workflow.yml` from this directory
2. Save it as `.github/workflows/compliance-docs.yml` in your repository
3. Commit and push to your repository

**How it works:**
- ✅ Pulls pre-built `lensai/lensai-fda-cybersecurity:latest` container
- ✅ Analyzes YOUR repository code directly
- ✅ Adapts documentation to your sector's requirements
- ✅ Always uses latest compliance features

### Step 3: Configure Your Sector
Go to your repository `Settings → Secrets and variables → Actions → Variables`
Add a new repository variable:
- **Name**: `SECTOR`
- **Value**: `healthcare` (or `financial`, `automotive`, etc.)

> **Note**: If not set, defaults to `healthcare` for FDA compliance
> **📚 See [Sector Configuration Guide](../docs/SECTOR_CONFIGURATION.md) for detailed sector-specific setup**

#### Healthcare-Specific Variables (Optional)
For healthcare/FDA compliance, you can add these optional variables for more accurate documentation:
- `DEVICE_CLASS`: FDA Class (I, II, or III)
- `INTENDED_USE`: Clinical purpose of your device
- `PATIENT_POPULATION`: Target patient demographics
- `CLINICAL_ENVIRONMENT`: Where device is used (ICU, home, etc.)
- `SAMD_CATEGORY`: Software as Medical Device category (CLASS_I to CLASS_IV)

### Step 4: Add Required Secret
1. Go to your repository `Settings → Secrets and variables → Actions`
2. Add a new repository secret:
   - **Name**: `LENSAI_API_KEY`
   - **Value**: Your LensAI API key ([Get one here](https://cydocgen.lensai.tech/))

### Step 5: Generate Documentation

You have two options to generate compliance documentation:

#### Option A: Release-Based (Recommended)
1. Create and push a version tag:
   ```bash
   git tag v2.1.0
   git push origin v2.1.0
   ```
2. Workflow automatically triggers and generates docs for v2.1.0
3. Version is auto-detected from the tag

#### Option B: Manual Generation
1. Go to `Actions` tab in your repository
2. Click `📋 Generate Compliance Documentation`
3. Click `Run workflow`
4. Fill in your product/system information:
   - **Name**: e.g., "Cardiac Monitor Pro" (healthcare) or "Trading Platform X" (financial)
   - **Manufacturer/Company**: e.g., "MedTech Solutions Inc"
   - **Version**: e.g., "2.1.0"
   - **Format**: `full` (all docs) or `incremental` (core docs)
   - **Publish to Confluence**: Enable if you want automatic publishing
5. Click `Run workflow`

### Step 6: Download Results
1. Wait 5-10 minutes for generation to complete
2. Go to the workflow run
3. Download the `compliance-docs-XXXXX` artifact
4. Extract and review your compliance documentation!

---

## 🎯 Real-World Example

### Microsoft Research hi-ml Project
See a successful FDA documentation generation in action:
- **Repository**: [vsnmtej/hi-ml](https://github.com/vsnmtej/hi-ml)
- **Successful FDA Generation Run**: [View Workflow Run](https://github.com/vsnmtej/hi-ml/actions/runs/17240468311)
- **Device**: Health Intelligence ML System
- **Generated**: Full FDA compliance documentation package

This example demonstrates:
- ✅ Complete workflow setup
- ✅ Successful document generation
- ✅ All 11 FDA documents created
- ✅ SBOM, security assessments, threat models
- ✅ Integration with GitHub's security features

---

## Optional: Atlassian Integration

**Note: The FDA generator works perfectly without Atlassian!** GitHub data alone provides comprehensive documentation.

If you use Jira and Confluence, add these secrets for even richer documentation:

**Jira Secrets:**
- `JIRA_URL` - e.g., `https://yourcompany.atlassian.net`
- `JIRA_EMAIL` - Your Jira email
- `JIRA_API_TOKEN` - [Create one here](https://id.atlassian.com/manage-profile/security/api-tokens)
- `JIRA_PROJECT_KEY` - e.g., `MED` or `DEV`

**Confluence Secrets (NEW!):**
- `CONFLUENCE_URL` - e.g., `https://yourcompany.atlassian.net/wiki`
- `CONFLUENCE_EMAIL` - Your Confluence email
- `CONFLUENCE_API_TOKEN` - Same as Jira token
- `CONFLUENCE_SPACE_KEY` - e.g., `FDA` or `COMPLIANCE`

**Automatic Publishing**: Documents can be automatically published to Confluence with versioned organization:
- Creates parent page: "FDA Documentation - {Device Name} v{Version}"
- Publishes all generated documents under this parent
- Provides direct links to published documents

---

## What You Get

### ✅ All 11 Required Documents:
1. **Risk Assessment** - Dual-framework analysis (ISO 14971 + NIST)
2. **Threat Model** - STRIDE-based threat analysis with mitigation strategies
3. **Architecture Document** - 4 FDA-required views (Global, Multi-Patient, Updateability, Security)
4. **Security Controls** - NIST 800-53 control implementation
5. **Vulnerability Management** - Tracking with **automated patch generation**
6. **Incident Response Plan** - FDA-compliant incident handling procedures
7. **Penetration Test Report** - Security testing results and findings
8. **Security Updates & Postmarket** - Surveillance and update management
9. **SBOM** - Complete Software Bill of Materials (CycloneDX/SPDX format)
10. **Traceability Matrix** - Requirements to implementation mapping
11. **Action Plan** - Phased implementation roadmap with **actionable patches**

### ✅ Rich Data Sources:
- **GitHub**: Commits, issues, PRs, vulnerabilities, releases
- **Code Analysis**: Intelligent batched processing of any codebase size
- **7 Security Scanners**: Trivy, Grype, Semgrep, Bandit, Safety, pip-audit, Syft
- **CVSS Scoring**: Industry-standard vulnerability severity ratings
- **Atlassian** (optional): Jira issues and Confluence documentation via MCP

### ✅ Production Ready:
- **Release-Based Automation**: Automatically generates docs when you tag releases
- **Manual Control**: Run documentation generation on-demand
- **Confluence Integration**: Auto-publishes when credentials configured
- **Automated Patch Generation**: Creates code fixes with confidence levels (HIGH/MEDIUM/LOW)
- **Intelligent Evidence Processing**: No minimum requirements - works with any project size
- **Secure Environment**: Runs in GitHub Actions, no data stored externally
- **Professional Output**: FDA-submission ready documents with cross-references
- **Version Tracking**: Automatic version detection from git tags

---

## Key Features (v2.0)

### 🔧 Automated Patch Generation
The system automatically generates patches for detected vulnerabilities:
- **SQL injection** fixes with parameterized queries
- **XSS** prevention with proper escaping
- **Hardcoded secrets** replacement with environment variables
- **Path traversal** protection
- **Insecure cryptography** upgrades
- Patches include confidence levels and testing instructions

### 📤 Auto-Confluence Publishing
Documents automatically publish when Confluence credentials are configured:
- No manual upload needed
- Version-based organization
- Direct links in workflow output
- Preserves document hierarchy

### 🌍 Intelligent Evidence Processing
Uses batched processing that works with any codebase:
- **No minimum requirements** - works with prototypes to enterprise systems
- **Smart compaction** - summarizes gigabytes of data efficiently
- **Context-aware** - focuses on security-relevant evidence
- **Adaptive batching** - handles large repositories without timeouts

### Configuration Options
Set these as repository variables (Settings → Secrets and variables → Actions → Variables):
- `SECTOR`: Choose your industry (healthcare, financial, automotive, aerospace, industrial)
- `ENABLE_PATCH_GENERATION`: Enable/disable patch generation (default: true)
- `CONFLUENCE_PUBLISH`: Control publishing (auto/true/false)

---

## Troubleshooting

### ❌ "LENSAI_API_KEY is required"
- Make sure you added the secret with the exact name `LENSAI_API_KEY`
- Verify the API key is valid at https://cydocgen.lensai.tech/

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
