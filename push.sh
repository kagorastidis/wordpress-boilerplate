#!/bin/sh
DBSERVER=127.0.0.1
DATABASE='wordpress-boilerplate'
USER='root'
PASS=''
mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > dump/${DATABASE}.sql
echo "Database was dumped successfully"
echo ""
echo "Beginning commit..."
echo ""
git add .
echo "Added files"
echo ""
echo "Give commit message"
read COMMIT_MSG
echo ""
echo "Commiting...."
git commit -m "${COMMIT_MSG}"
echo "Pushing changes to repository..."
echo ""
git push
echo "All done!"