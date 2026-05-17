# Domino's Server Conversion Pipeline

Simulates an overnight server swap and data migration workflow using Jenkins.

## Pipeline Stages
1. **Pre-Check** - Validates server readiness before conversion
2. **Backup** - Secures all data before migration begins
3. **Migration** - Transfers data to the new server
4. **Post-Check** - Verifies new server is fully operational
5. **Complete** - Closes the ServiceNow change ticket

## What I Built
- Jenkins pipeline connected to GitHub via SCM
- PowerShell scripts simulating real server conversion tasks
- Automated build triggers polling GitHub every 5 minutes
- Simulated a real failure scenario and recovered the pipeline

## Tools Used
- Jenkins 2.x
- Git + GitHub
- PowerShell
- Windows Server environment

## Outcome
Successfully automated a server conversion workflow end to end,
simulating the kind of overnight migrations performed in
enterprise IT infrastructure roles.
