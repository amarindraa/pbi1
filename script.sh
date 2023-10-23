# Crontab syntax to run the script daily at 07:00 AM

crontab -e

# Add the following line to run the script daily at 07:00 AM


0 7 * * * /$path/$name_of_directory/script.sh

# Save and exit your crontab configuration

# The script will run at 07:00 AM every day
