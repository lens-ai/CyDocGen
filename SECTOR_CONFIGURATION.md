# Sector-Specific Configuration Examples

## Healthcare (FDA Compliance)
```yaml
# In your GitHub Actions workflow
env:
  SECTOR: healthcare
  DEVICE_NAME: "Cardiac Monitor Pro"
  DEVICE_MANUFACTURER: "MedTech Solutions Inc"
  DEVICE_VERSION: "2.1.0"
```

**Generated Documents:**
- Cybersecurity Risk Assessment (FDA 524B)
- Threat Model (STRIDE methodology)
- SBOM with vulnerability analysis
- Security Architecture Document
- IEC 81001-5-1 compliance mapping
- ISO 14971 risk management

## Financial Services
```yaml
# In your GitHub Actions workflow  
env:
  SECTOR: financial
  DEVICE_NAME: "Trading Platform X"
  DEVICE_MANUFACTURER: "FinTech Corp"
  DEVICE_VERSION: "3.0.0"
```

**Generated Documents:**
- SOX compliance assessment
- PCI-DSS security controls
- MiFID II regulatory mapping
- Data protection impact assessment
- Penetration test results
- Incident response procedures

## Automotive
```yaml
# In your GitHub Actions workflow
env:
  SECTOR: automotive
  DEVICE_NAME: "ADAS Control System"
  DEVICE_MANUFACTURER: "AutoTech Industries"
  DEVICE_VERSION: "1.5.0"
```

**Generated Documents:**
- ISO 26262 compliance matrix
- ASIL-D safety analysis
- Cybersecurity Management System (CSMS)
- UN R155/R156 compliance
- Threat analysis and risk assessment (TARA)
- Security validation report

## Aerospace
```yaml
# In your GitHub Actions workflow
env:
  SECTOR: aerospace
  DEVICE_NAME: "Flight Control Software"
  DEVICE_MANUFACTURER: "AeroSystems Ltd"
  DEVICE_VERSION: "4.2.1"
```

**Generated Documents:**
- DO-178C software certification
- DO-254 hardware assurance
- ARP4754A system safety assessment
- Security risk assessment
- Configuration management plan
- Verification and validation reports

## Industrial Control Systems
```yaml
# In your GitHub Actions workflow
env:
  SECTOR: industrial
  DEVICE_NAME: "SCADA Controller"
  DEVICE_MANUFACTURER: "Industrial Systems Co"
  DEVICE_VERSION: "2.0.0"
```

**Generated Documents:**
- IEC 62443 security levels
- NIST CSF implementation
- OT security assessment
- Network segmentation design
- Incident response playbook
- Security monitoring procedures

## Setting Sector via Repository Variables

1. Go to your repository Settings
2. Navigate to Secrets and variables → Actions
3. Click on "Variables" tab
4. Add new repository variable:
   - Name: `SECTOR`
   - Value: `healthcare` (or `financial`, `automotive`, etc.)

This will apply to all workflow runs automatically without needing to modify the workflow file.

## Environment Variable Priority

The system checks for sector configuration in this order:
1. Repository variable `SECTOR` 
2. Environment variable in workflow
3. Default to `healthcare` if not specified

## Validation

The system validates the sector value and will default to `healthcare` with a warning if an invalid sector is provided. Valid sectors are:
- healthcare
- financial
- automotive
- aerospace
- industrial