echo "Installing JQ for JSON parsing ..."

wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
chmod +x ./jq

echo "Updating PATH to include jq ..."
export PATH=$PATH:/app

echo "Updating PATH to include Salesforce CLI ..."
export PATH=$PATH:/app/.local/share/sfdx/cli/bin/

echo "Updating Salesforce CLI plugin ..."
sfdx update

echo "Return version info ..."
sfdx version
sfdx plugins --core

echo "Creating local resources ..."
mkdir /app/tmp

echo "Completed!"