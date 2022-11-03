#!/bin/bash

read -p "Je naam: " YOURNAME
read -p "Je email: " YOUREMAIL
read -p "Galaxy namespace: " NAMESPACE
read -p "Galaxy role name: " ROLENAME
read -p "Galaxy description: " DESCRIPTION

echo ""
echo "- Updaten van de role informatie."

# Files to change
sed -i "s/ansibletemplate/$ROLENAME/g" .github/workflows/ci.yml
sed -i "s/ansibletemplate/$ROLENAME/g" .github/workflows/release.yml
sed -i "s/Jou naam hier/$YOURNAME/g" meta/main.yml
sed -i "s/Jou omschrijving hier/$DESCRIPTION/g" meta/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" meta/main.yml
sed -i "s/template-ansible-role/ansible-role-$ROLENAME/g" meta/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" tasks/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" tests/test.yml
sed -i "s/ansibletemplate/$ROLENAME/g" vars/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" handlers/main.yml
sed -i "s/ansibletemplate/$ROLENAME/g" defaults/main.yml
sed -i "s/Template/ansible-role-$ROLENAME/g" README.md
sed -i "s/template-ansible-role/ansible-role-$ROLENAME/g" README.md
sed -i "s/ansibletemplate/$ROLENAME/g" README.md

echo ""
echo "Note:"
echo "Dit script vervangt GEEN AnyLinQ specifieke data in de role en dubelcheck de meta/main.yml."
