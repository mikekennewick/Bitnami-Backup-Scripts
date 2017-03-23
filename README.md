# Bitnami Backup Script
This is a simple bash script that runs instructions provided on Bitnami for full backup of wordpress blog
https://docs.bitnami.com/aws/apps/wordpress/#backup

# Run Instructions
1. Setup Directories
2. Copy file to Linux Server
3. Chmod -x on file to make it executable
4. Run the script from command line

# Note
1. This process copies the entire bitnami directory.
2. Requires that you stop all services during backup which will result in an outage
