# 🐾 WildGuard360 - Protecting Wildlife with Innovation and Heart

[![GitHub license](https://img.shields.io/github/license/Poseidon120104/SC1_WildGuard360)](https://github.com/Poseidon120104/SC1_WildGuard360/blob/main/LICENSE)
[![React](https://img.shields.io/badge/React-18.3.1-blue)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-Express-green)](https://nodejs.org/)
[![Python](https://img.shields.io/badge/Python-Flask-yellow)](https://python.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-Database-green)](https://mongodb.com/)

**WildGuard360** is a comprehensive wildlife and pet protection platform that leverages cutting-edge AI technology to ensure the safety and well-being of animals. Our mission is to create a harmonious world where wildlife thrives alongside human development through innovative detection systems, efficient rescue operations, and a robust network of wildlife protection measures.

## 🌟 Features

### 🔍 AI-Powered Animal Detection & Classification
- **Snake Species Classification**: Identify and classify snake species for safety assessment
- **Bird Species Recognition**: Comprehensive bird identification system
- **Dog Breed & Health Detection**: Advanced dog breed recognition with health monitoring

### 🚨 Emergency Rescue Services
- **Missing Pet Finder**: Report and search for lost pets with geolocation tracking
- **24/7 Rescue Operations**: Connect with local NGOs and rescue organizations
- **Real-time Alert System**: Immediate notifications for emergency situations

### 🏥 Animal Health Monitoring
- **Disease Detection**: AI-powered health diagnostics for pets and wildlife
- **Symptom Analysis**: Early detection of common animal diseases
- **Health Recommendations**: Provide care suggestions and treatment options

### 📰 Wildlife Conservation
- **Wildlife News & Updates**: Latest conservation news and wildlife protection initiatives
- **Community Engagement**: Connect with fellow wildlife enthusiasts and conservationists
- **Educational Resources**: Learn about wildlife protection and conservation efforts

## 🛠️ Technology Stack

### Frontend
- **React 18.3.1** - Modern user interface
- **Vite** - Fast build tool and development server
- **CSS3** - Custom styling with responsive design
- **JavaScript (ES6+)** - Modern JavaScript features

### Backend
- **Node.js** - Server runtime environment
- **Express.js** - Web application framework
- **MongoDB** - NoSQL database for data storage
- **Mongoose** - MongoDB object modeling

### AI/ML Services
- **Python Flask** - Machine learning API server
- **TensorFlow** - Deep learning models for image classification
- **Computer Vision** - Image processing and analysis
- **ResNet50** - Pre-trained neural network for species classification

### Authentication & Security
- **JWT (JSON Web Tokens)** - Secure user authentication
- **bcrypt** - Password hashing and security
- **CORS** - Cross-origin resource sharing

## 🚀 Quick Start

### Prerequisites
- Node.js (v16 or higher)
- Python (v3.8 or higher)
- MongoDB (local or cloud instance)
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Poseidon120104/SC1_WildGuard360.git
   cd SC1_WildGuard360
   ```

2. **Setup Backend (Node.js Server)**
   ```bash
   cd server
   npm install
   cp .env.sample .env
   # Edit .env file with your database credentials and configuration
   npm start
   ```

3. **Setup Frontend (React App)**
   ```bash
   cd client
   npm install
   npm run dev
   ```

4. **Setup ML Services (Python Flask)**
   ```bash
   cd server/Flask
   pip install -r requirements.txt  # Create this file with dependencies
   python app.py
   ```

### Environment Variables

Create a `.env` file in the `server` directory with the following variables:

```env
PORT=3000
MONGODB_URI=mongodb://localhost:27017/wildguard360
JWT_SECRET=your_jwt_secret_key
CLOUDINARY_CLOUD_NAME=your_cloudinary_name
CLOUDINARY_API_KEY=your_cloudinary_api_key
CLOUDINARY_API_SECRET=your_cloudinary_api_secret
```

## 📖 Usage

### Animal Classification
1. Navigate to the species classification section
2. Upload an image of the animal (snake, bird, or dog)
3. Get instant AI-powered identification results
4. View detailed information about the species

### Report Missing Pet
1. Go to the "Missing Pet" section
2. Fill out the pet details form
3. Upload a clear photo of your pet
4. Add location information
5. Submit the report for community assistance

### Emergency Rescue
1. Access the emergency rescue feature
2. Provide location and situation details
3. Connect with nearby NGOs and rescue services
4. Track rescue operation status

## 🔗 API Endpoints

### User Management
- `POST /api/v1/users/register` - Register new user
- `POST /api/v1/users/login` - User login
- `GET /api/v1/users/profile` - Get user profile

### Pet Reports
- `POST /api/pet-reports` - Create new pet report
- `GET /api/pet-reports` - Get all pet reports
- `PUT /api/pet-reports/:id` - Update pet report status

### ML Classification
- `POST /upload` - Upload image for classification
- `POST /classify/snake` - Snake species classification
- `POST /classify/bird` - Bird species identification
- `POST /classify/dog` - Dog breed recognition

## 🤝 Contributing

We welcome contributions from the community! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Development Guidelines
- Follow the existing code style and structure
- Write clear commit messages
- Add tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting

## 🧪 Testing

### Run Frontend Tests
```bash
cd client
npm run test
```

### Run Backend Tests
```bash
cd server
npm test
```

### Linting
```bash
# Frontend
cd client
npm run lint

# Backend
cd server
npm run lint
```

## 📱 Screenshots

*Add screenshots of your application here to showcase the UI and features*

## 🛣️ Roadmap

- [ ] Mobile application development
- [ ] Real-time chat with rescue teams
- [ ] Advanced ML models for rare species detection
- [ ] Integration with government wildlife databases
- [ ] Multilingual support
- [ ] IoT sensor integration for wildlife monitoring

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🏆 Our Team

We are a passionate team of developers and wildlife enthusiasts dedicated to making a difference:

- **[Amit Mandhana](https://github.com/AmitMandhana)** - Full Stack Developer
- **[Aakash Mondal](https://github.com/Akash-Mondal2004)** - Frontend Developer  
- **[Aditya Paul](https://github.com/Poseidon120104)** - Backend Developer
- **[Prithwish Dey](https://github.com/prithwish2dey)** - ML Engineer
- **[Subhankar Kumar](https://github.com/Shubhankarkmr)** - UI/UX Designer
- **[Sayan Mandal](https://github.com/sayan-iiitian)** - DevOps Engineer

## 📞 Support

For support, email wildguard360@example.com or join our community discussions.

## 🌍 Vision

Our vision is a world where wildlife thrives in harmony with human development. We believe that by leveraging advanced technology and fostering a collaborative approach, we can create sustainable solutions that benefit both animals and humans.

---

Made with ❤️ for wildlife protection and conservation

