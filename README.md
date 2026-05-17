# Domino's Server Conversion Pipeline

Simulates an overnight server swap and data migration workflow using Jenkins.

## Pipeline Stages
1. **Pre-Check** - Validates server readiness before conversion
2. **Backup** - Secures all data before migration begins
3. **Migration** - Transfers data to the new server
4. **Post-Check** - Verifies new server is fully operational
5. **Complete** - Closes the ServiceNow change ticket

## Tools Simulated
- Jenkins (pipeline automation)
- PowerShell (server scripts)
- ServiceNow (ticket tracking via TICKET_ID)
- Windows Server environments
