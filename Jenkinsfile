pipeline {
    agent any

    environment {
        SERVER_NAME = "STORE-SERVER-042"
        TICKET_ID   = "CHG0001234"
        ENV         = "production"
    }

    stages {
        stage('Pre-Check') {
            steps {
                echo "[$TICKET_ID] Starting pre-conversion checks on $SERVER_NAME"
                powershell './scripts/pre_check.ps1'
            }
        }
        stage('Backup') {
            steps {
                echo "[$TICKET_ID] Backing up data on $SERVER_NAME"
                powershell './scripts/backup_data.ps1'
            }
        }
        stage('Migration') {
            steps {
                echo "[$TICKET_ID] Migrating data to new server"
                powershell './scripts/migrate_data.ps1'
            }
        }
        stage('Post-Check') {
            steps {
                echo "[$TICKET_ID] Running post-conversion verification"
                powershell './scripts/post_check.ps1'
            }
        }
        stage('Complete') {
            steps {
                echo "[$TICKET_ID] Conversion complete. Closing ticket."
            }
        }
    }

    post {
        success {
            echo "SUCCESS: $SERVER_NAME conversion finished. Ticket $TICKET_ID resolved."
        }
        failure {
            echo "FAILURE: $SERVER_NAME conversion failed. Escalating $TICKET_ID."
        }
    }
}
