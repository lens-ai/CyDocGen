# Automated Security Fixes & Compliance Documentation
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
1. Copy `cyber-security-docgen.yml` from this directory
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
> **📚 See [Sector Configuration Guide](https://github.com/lens-ai/CyDocGen/blob/main/SECTOR_CONFIGURATION.md) for detailed sector-specific setup**

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
   - **Value**: Your LensAI API key ([Get one here](https://app.baseten.co/))

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

### ✅ All 11 Cybersecurity  Documents:
1. **Risk Assessment** - Dual-framework analysis (ISO 14971 + NIST)
2. **Threat Model** - STRIDE-based threat analysis with mitigation strategies
3. **Architecture Document** - 4 FDA-required views (Global, Multi-Patient, Updateability, Security)
4. **Security Controls** - NIST 800-53 control implementation
5. **Vulnerability Management** - Tracking with **automated patch generation & GitHub PR creation**
6. **Incident Response Plan** - FDA-compliant incident handling procedures
7. **Penetration Test Report** - Security testing results and findings
8. **Security Updates & Postmarket** - Surveillance and update management
9. **SBOM** - Complete Software Bill of Materials (CycloneDX/SPDX format)
10. **Traceability Matrix** - Requirements to implementation mapping
11. **Action Plan** - Phased implementation roadmap with **automated patch branches & PRs**

### ✅ Rich Data Sources:
- **GitHub**: Commits, issues, PRs, vulnerabilities, releases
- **Code Analysis**: Intelligent batched processing of any codebase size
- **7 Security Scanners**: Trivy, Grype, Semgrep, Bandit, Safety, pip-audit, Syft
- **Yocto Firmware Analysis** (NEW!): Embedded Linux firmware scanning with 40-60% CVE false positive reduction
- **CVSS Scoring**: Industry-standard vulnerability severity ratings
- **Atlassian** (optional): Jira issues and Confluence documentation via MCP

### ✅ Production Ready:
- **Release-Based Automation**: Automatically generates docs when you tag releases
- **Manual Control**: Run documentation generation on-demand
- **Confluence Integration**: Auto-publishes when credentials configured
- **Automated Patch Branches**: Creates code fixes with confidence levels (HIGH/MEDIUM/LOW) in GitHub branches & PRs
- **Intelligent Evidence Processing**: No minimum requirements - works with any project size
- **Secure Environment**: Runs in GitHub Actions, no data stored externally
- **Professional Output**: FDA-submission ready documents with cross-references
- **Version Tracking**: Automatic version detection from git tags

---

## Recent Updates

### v2.3.0 (March 2026) - Performance & Security Improvements
**🚀 3x Faster CI/CD Pipeline**
- Parallel test execution with pytest-xdist (60 min → 20 min test suite)
- Automatic CPU core detection for optimal performance
- GitHub Actions runners: utilizes up to 8 cores
- Significant reduction in workflow execution time

**🔒 Security Updates**
- Trivy vulnerability scanner upgraded to v0.69.2
- Addresses March 2026 security incident (CVE-2024-xxxx)
- Enhanced vulnerability database coverage
- Improved download reliability with better error handling
- Microsoft SBOM Tool verification fixes

**📊 Impact:**
- Test suite execution: **3x faster** (from 60 min to 20 min)
- Total CI/CD runtime: **60 min → 20-30 min**
- Zero breaking changes - seamless upgrade
- Enhanced security scanning accuracy

**🔧 Bug Fixes:**
- Fixed Microsoft SBOM Tool exit code handling
- Improved workflow reliability for PR validation
- Enhanced error messages for better troubleshooting

### v2.2.2 (February 2026) - Multi-Sector Expansion
**🌍 EU Cyber Resilience Act (CRA) Support**
- Complete CRA compliance documentation framework
- Article-by-article mapping to technical requirements
- Multi-sector documentation support (Healthcare + CRA)
- Sector-specific document generation

**📋 Compliance Frameworks:**
- Healthcare: FDA 524B, ISO 14971, IEC 81001-5-1
- EU CRA: Regulation 2024/2847 (Cyber Resilience Act)
- Extensible architecture for future sectors

### v2.1.0 (January 2026) - Firmware Analysis
**🔬 Yocto/Embedded Linux Firmware Scanning**
- Industry's first automated FDA documentation for embedded Linux medical devices
- 40-60% CVE false positive reduction via build-time evidence fusion
- SPDX + cve-check.json integration with binary scanning
- Support for Yocto, OpenWrt, Buildroot distributions

**🔧 Automated Patch Generation**
- Automatic security fix generation with GitHub integration
- Confidence-level based patch classification (HIGH/MEDIUM/LOW)
- Automated branch creation and pull request generation
- Safe operation with branch protection

---

## Key Features

### 🔬 Yocto Firmware Analysis (NEW!)
Industry's first automated FDA documentation for embedded Linux medical devices:

**40-60% CVE False Positive Reduction**
- Fuses build-time evidence (SPDX, cve-check.json) with binary scan results
- Eliminates false positives from Yocto's backported security patches
- Detects Yocto, OpenWrt, Buildroot, and other embedded distributions

**Supported Workflows:**
- **Mode 1: Build Artifacts Only** - Use Yocto SBOM + cve-check.json from your build
- **Mode 2: Binary Scan Only** - Scan rootfs with Syft + Grype
- **Mode 3: Fusion** - Combine both for maximum accuracy (recommended)

**Yocto Build Integration:**
```yaml
# In your Yocto build workflow:
- name: Build Firmware with SBOM
  run: |
    # Add to conf/local.conf:
    # INHERIT += "create-spdx cve-check"
    bitbake core-image-minimal

- uses: lens-ai/fda-generator@v1
  with:
    firmware_rootfs: './build/tmp/work/.../rootfs'
    yocto_build_sbom: './build/tmp/deploy/images/*.spdx.json'
    yocto_cve_check: './build/tmp/deploy/cve/cve-check.json'
```

### 🔧 Automated GitHub Patch Branches
The system automatically creates GitHub branches and pull requests with security fixes:

**What gets created:**
- **Security patch branches** with descriptive names (e.g., `security-patches-20241224-123456`)
- **GitHub pull requests** with detailed descriptions and testing checklists
- **Confidence-based drafts** (LOW confidence patches create draft PRs for extra review)

**Vulnerability fixes include:**
- **SQL injection** fixes with parameterized queries
- **XSS** prevention with proper escaping
- **Hardcoded secrets** replacement with environment variables
- **Path traversal** protection
- **Insecure cryptography** upgrades
- **Input validation** improvements

**Patch Branch Options:**
- **Enabled by default** - Creates patch branches automatically
- **Optional PR creation** - Can auto-create GitHub PRs or create branches only
- **Flexible base branches** - Works with main, develop, or any feature branch
- **Confidence levels** - HIGH/MEDIUM/LOW with appropriate review requirements
- **Branch protection** - Never modifies protected branches directly (main, master, develop, etc.)
- **Safe operation** - Always creates new branches from the specified base branch

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
- `CONFLUENCE_PUBLISH`: Control publishing (auto/true/false)

### Patch Branch Configuration (NEW!)
Control automated patch branch creation through workflow inputs:
- **Create patch branch**: Enable/disable automatic patch branch creation (default: enabled)
- **Create GitHub PR**: Enable/disable automatic PR creation (default: disabled)
- **Base branch**: Specify base branch for patches (default: main, can be develop, feature branches, etc.)

**Manual Workflow Example:**
1. Go to Actions → "Example FDA Documentation Generation"
2. Click "Run workflow"
3. Configure patch options:
   - ✅ **Create patch branch with security fixes**: Default enabled
   - ☐ **Create GitHub PR for patches**: Optional (enable for automatic PR creation)
   - **Base branch**: Choose main, develop, or any feature branch

### Branch Protection & Security 🔒
The patch branch system includes built-in protections:

**Protected Branches:**
- Never directly modifies: `main`, `master`, `develop`, `release`, `production`, `prod`
- Always creates new branches with descriptive names (e.g., `security-patches-HIGH-20241224-123456`)
- Validates that base branch exists before creating patch branches

**Safe Operations:**
- **Branch validation** - Verifies base branch exists locally or on remote
- **Name collision prevention** - Uses timestamps to ensure unique branch names
- **Rollback capability** - Patch branches can be safely deleted if needed
- **Review workflow** - LOW confidence patches create draft PRs requiring extra review

---

## 📊 Performance Metrics

### Typical Workflow Execution Times

| Metric | Time | Notes |
|--------|------|-------|
| **Documentation Generation** | 5-10 min | Full 11-document package |
| **SBOM Generation** | < 1 min | Syft + Grype scanning |
| **Test Execution (CI/CD)** | 20-30 min | Parallel testing with pytest-xdist |
| **Firmware Analysis (EMBA)** | 15-30 min | Deep embedded Linux analysis |
| **Security Scanning** | 2-3 min | 7 parallel scanners |
| **Total Workflow (Full)** | 25-45 min | All jobs combined |

### Performance Optimizations (v2.3.0)

**CI/CD Pipeline:**
- ✅ **Parallel test execution** with pytest-xdist (8 cores)
- ✅ **3x faster test suite** (60 min → 20 min)
- ✅ **Intelligent evidence batching** for large codebases
- ✅ **Docker layer caching** for faster builds
- ✅ **GitHub Actions artifact caching**

**Resource Efficiency:**
- **Memory**: < 2GB for typical repositories
- **Disk Space**: 10-15GB (freed automatically after workflow)
- **API Calls**: Optimized LLM batching reduces token usage by 40%
- **Network**: Parallel downloads for security scanners

### Scalability

| Repository Size | Generation Time | Notes |
|-----------------|-----------------|-------|
| **Small** (< 1K files) | 5-8 min | Fast, minimal batching |
| **Medium** (1K-10K files) | 8-15 min | Intelligent compaction |
| **Large** (10K-50K files) | 15-30 min | Adaptive batching |
| **Enterprise** (> 50K files) | 30-45 min | Multi-stage processing |

**Yocto Firmware Projects:**
- Rootfs scanning: 5-10 min (depending on size)
- Build artifact fusion: < 1 min
- CVE false positive reduction: 40-60% fewer alerts

---

## Troubleshooting

### ❌ "LENSAI_API_KEY is required"
- Make sure you added the secret with the exact name `LENSAI_API_KEY`
- Verify the API key is valid at https://app.baseten.co/

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

- **Issues**: [GitHub Issues](https://github.com/lens-ai/CyDocGen/issues)
- **Documentation**: See README.md in the main repository
- **Examples**: Check the `/examples` directory for more templates

---

