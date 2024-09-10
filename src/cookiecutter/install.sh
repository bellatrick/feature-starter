#!/bin/bash
set -e

echo "Activating feature 'cookiecutter-data-science'"

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Python is not installed. Please install Python first."
    exit 1
fi

# Get the VERSION from the environment, defaulting to "latest" if not set
VERSION=${VERSION:-"latest"}

# Create a virtual environment
VENV_PATH="/opt/cookiecutter-venv"
python3 -m venv $VENV_PATH

# Activate the virtual environment
source $VENV_PATH/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install cookiecutter-data-science

pip install cookiecutter-data-science


# Create a script to activate the virtual environment
cat << EOF > /usr/local/bin/activate-cookiecutter-ds
#!/bin/bash
source $VENV_PATH/bin/activate
EOF
chmod +x /usr/local/bin/activate-cookiecutter-ds

echo "cookiecutter-data-science $VERSION has been installed successfully."
echo "To activate the Cookiecutter environment, run: source /usr/local/bin/activate-cookiecutter-ds"