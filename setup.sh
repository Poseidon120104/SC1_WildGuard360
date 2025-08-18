#!/bin/bash

# WildGuard360 Setup and Demo Script
# This script helps with setting up the development environment

set -e

echo "🛡️  WildGuard360 - Setup and Demo Script"
echo "========================================"
echo

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_header() {
    echo -e "${BLUE}$1${NC}"
}

# Check prerequisites
check_prerequisites() {
    print_header "Checking Prerequisites..."
    
    # Check Node.js
    if command -v node &> /dev/null; then
        NODE_VERSION=$(node --version)
        print_status "Node.js found: $NODE_VERSION"
    else
        print_error "Node.js not found. Please install Node.js v16 or higher."
        exit 1
    fi
    
    # Check npm
    if command -v npm &> /dev/null; then
        NPM_VERSION=$(npm --version)
        print_status "npm found: $NPM_VERSION"
    else
        print_error "npm not found. Please install npm."
        exit 1
    fi
    
    # Check Python
    if command -v python3 &> /dev/null; then
        PYTHON_VERSION=$(python3 --version)
        print_status "Python found: $PYTHON_VERSION"
    else
        print_error "Python 3 not found. Please install Python 3.8 or higher."
        exit 1
    fi
    
    # Check pip
    if command -v pip3 &> /dev/null; then
        PIP_VERSION=$(pip3 --version)
        print_status "pip3 found: $PIP_VERSION"
    else
        print_error "pip3 not found. Please install pip3."
        exit 1
    fi
    
    echo
}

# Install dependencies
install_dependencies() {
    print_header "Installing Dependencies..."
    
    # Install backend dependencies
    print_status "Installing backend dependencies..."
    cd server
    npm install
    cd ..
    
    # Install frontend dependencies
    print_status "Installing frontend dependencies..."
    cd client
    npm install
    cd ..
    
    # Install Python dependencies
    print_status "Installing Python dependencies..."
    cd server/Flask
    pip3 install -r requirements.txt
    cd ../..
    
    echo
}

# Setup environment
setup_environment() {
    print_header "Setting up Environment..."
    
    if [ ! -f "server/.env" ]; then
        if [ -f "server/.env.sample" ]; then
            print_status "Creating .env file from .env.sample..."
            cp server/.env.sample server/.env
            print_warning "Please edit server/.env file with your MongoDB URI and other configurations."
        else
            print_warning "No .env.sample file found. Please create server/.env manually."
        fi
    else
        print_status ".env file already exists."
    fi
    
    echo
}

# Run demo
run_demo() {
    print_header "Running Demo..."
    print_status "This will start all services in demo mode..."
    
    # Check if MongoDB is running (optional)
    print_warning "Make sure MongoDB is running before starting the backend server."
    print_status "You can start the services manually:"
    echo "  1. Backend: cd server && npm start"
    echo "  2. Frontend: cd client && npm run dev"
    echo "  3. Flask ML: cd server/Flask && python3 app.py"
    echo
}

# Main menu
show_menu() {
    echo "What would you like to do?"
    echo "1. Check prerequisites"
    echo "2. Install dependencies"
    echo "3. Setup environment"
    echo "4. Show demo instructions"
    echo "5. Full setup (1-4)"
    echo "6. Exit"
    echo
}

# Main script
main() {
    while true; do
        show_menu
        read -p "Enter your choice (1-6): " choice
        echo
        
        case $choice in
            1)
                check_prerequisites
                ;;
            2)
                install_dependencies
                ;;
            3)
                setup_environment
                ;;
            4)
                run_demo
                ;;
            5)
                check_prerequisites
                install_dependencies
                setup_environment
                run_demo
                ;;
            6)
                print_status "Thank you for using WildGuard360!"
                exit 0
                ;;
            *)
                print_error "Invalid option. Please choose 1-6."
                ;;
        esac
        
        echo
        read -p "Press Enter to continue..."
        echo
    done
}

# Run main function
main