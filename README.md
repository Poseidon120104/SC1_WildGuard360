# 🛡️ WildGuard360 - Wildlife & Pet Protection Platform

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![React](https://img.shields.io/badge/React-18.3.1-blue.svg)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-Latest-green.svg)](https://nodejs.org/)
[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://python.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-Database-green.svg)](https://mongodb.com/)

> **A comprehensive AI-powered platform for wildlife conservation, pet protection, and animal welfare management.**

WildGuard360 is an innovative platform that combines cutting-edge machine learning technology with social networking features to create a comprehensive ecosystem for animal protection and wildlife conservation. Our platform helps users identify animals, find missing pets, connect with NGOs for rescue operations, and build a community dedicated to animal welfare.

## 🌟 Key Features

### 🔍 **AI-Powered Animal Recognition**
- **Snake Classification**: Identify venomous vs non-venomous species with safety recommendations
- **Bird Identification**: Recognize bird species with conservation status and migration patterns
- **Dog Breed Recognition**: Accurate breed identification for pets
- **Disease Diagnosis**: AI-powered symptom analysis for pet health monitoring

### 🚨 **Emergency & Rescue Services**
- **Missing Pet Finder**: Report and search for lost pets in your area
- **NGO Rescue Coordination**: Connect directly with local animal rescue organizations
- **Forest Fire Detection**: Early warning system for wildlife habitat protection
- **Emergency Response Guidelines**: Immediate care instructions for different scenarios

### 🌐 **Community Platform**
- **Social Networking**: Connect with fellow animal lovers and conservationists
- **Post Sharing**: Share animal sightings, rescue stories, and conservation efforts
- **Friend Network**: Build connections with like-minded individuals
- **Real-time Messaging**: Coordinate rescue efforts and share urgent information

### 💝 **Support & Donations**
- **Donation Platform**: Support wildlife conservation projects
- **Digital Certificates**: Recognition for contributions to animal welfare
- **NGO Partnerships**: Direct funding to verified animal welfare organizations

## 🏗️ Technology Stack

### Frontend
- **React 18.3.1** - Modern, responsive user interface
- **Vite** - Fast development build tool
- **React Router** - Client-side routing
- **ESLint** - Code quality and consistency

### Backend
- **Node.js** - Server runtime environment
- **Express.js** - Web application framework
- **MongoDB** - NoSQL database for data storage
- **JWT** - Secure user authentication
- **Cloudinary** - Image upload and management
- **Multer** - File upload handling

### Machine Learning
- **Python Flask** - ML model serving
- **TensorFlow** - Deep learning models
- **PyTorch** - Neural network implementations
- **scikit-learn** - Machine learning algorithms
- **OpenCV** - Computer vision processing

### Database & Storage
- **MongoDB** - Primary database
- **Mongoose** - MongoDB object modeling
- **Cloudinary** - Cloud-based image storage

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

2. **Setup Backend Server**
   ```bash
   cd server
   npm install
   
   # Copy environment variables
   cp .env.sample .env
   # Edit .env file with your MongoDB URI and other configurations
   
   # Start the server
   npm start
   ```

3. **Setup Flask ML Services**
   ```bash
   cd server/Flask
   pip install -r requirements.txt
   # Note: Create requirements.txt with necessary packages
   
   # Start Flask server
   python app.py
   ```

4. **Setup Frontend Client**
   ```bash
   cd client
   npm install
   
   # Start development server
   npm run dev
   ```

5. **Access the Application**
   - Frontend: `http://localhost:5173`
   - Backend API: `http://localhost:3000`
   - Flask ML API: `http://localhost:5000`

## 🗂️ Project Structure

```
SC1_WildGuard360/
├── client/                 # React frontend application
│   ├── src/
│   │   ├── components/     # Reusable UI components
│   │   ├── assets/         # Static assets
│   │   └── App.jsx         # Main application component
│   ├── public/             # Public assets
│   └── package.json        # Frontend dependencies
│
├── server/                 # Backend services
│   ├── src/
│   │   ├── controllers/    # Business logic controllers
│   │   ├── models/         # Database models
│   │   ├── routes/         # API route definitions
│   │   ├── middlewares/    # Custom middleware
│   │   └── utils/          # Utility functions
│   │
│   ├── Flask/              # ML services
│   │   ├── app.py          # Flask application
│   │   ├── *_data.py       # Animal data repositories
│   │   └── *.pkl           # Pre-trained models
│   │
│   └── package.json        # Backend dependencies
│
└── README.md               # Project documentation
```

## 📚 API Documentation

### Authentication Endpoints
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/verify/:token` - Email verification

### User Management
- `GET /api/users/profile` - Get user profile
- `PUT /api/users/profile` - Update user profile
- `POST /api/users/friend-request` - Send friend request

### Animal Recognition
- `POST /api/ml/classify-snake` - Snake species identification
- `POST /api/ml/classify-bird` - Bird species identification
- `POST /api/ml/classify-dog` - Dog breed identification
- `POST /api/ml/diagnose-disease` - Pet health diagnosis

### Community Features
- `GET /api/posts` - Get community posts
- `POST /api/posts` - Create new post
- `POST /api/posts/:id/like` - Like/unlike post
- `POST /api/posts/:id/comment` - Add comment

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### Development Setup

1. **Fork the repository** and clone your fork
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Install dependencies** for both frontend and backend
4. **Make your changes** and test thoroughly
5. **Commit your changes**: `git commit -m 'Add amazing feature'`
6. **Push to your branch**: `git push origin feature/amazing-feature`
7. **Open a Pull Request**

### Contribution Guidelines

- Follow the existing code style and conventions
- Write clear, concise commit messages
- Include tests for new features
- Update documentation when necessary
- Ensure all tests pass before submitting PR

### Areas for Contribution

- 🐛 **Bug Fixes**: Help identify and fix issues
- ✨ **New Features**: Add new animal species recognition
- 📖 **Documentation**: Improve guides and API documentation
- 🎨 **UI/UX**: Enhance user interface and experience
- 🧪 **Testing**: Increase test coverage
- 🌍 **Localization**: Add support for multiple languages

## 🏆 Our Team

Meet the dedicated developers behind WildGuard360:

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/AmitMandhana">
        <img src="https://github.com/AmitMandhana.png" width="100px;" alt="Amit Mandhana"/>
        <br />
        <sub><b>Amit Mandhana</b></sub>
      </a>
      <br />
      Backend Development
    </td>
    <td align="center">
      <a href="https://github.com/Akash-Mondal2004">
        <img src="https://github.com/Akash-Mondal2004.png" width="100px;" alt="Aakash"/>
        <br />
        <sub><b>Aakash Mondal</b></sub>
      </a>
      <br />
      Frontend Development
    </td>
    <td align="center">
      <a href="https://github.com/Poseidon120104">
        <img src="https://github.com/Poseidon120104.png" width="100px;" alt="Aditya Paul"/>
        <br />
        <sub><b>Aditya Paul</b></sub>
      </a>
      <br />
      Project Lead & ML
    </td>
  </tr>
  <tr>
    <td align="center">
      <a href="https://github.com/prithwish2dey">
        <img src="https://github.com/prithwish2dey.png" width="100px;" alt="Prithwish Dey"/>
        <br />
        <sub><b>Prithwish Dey</b></sub>
      </a>
      <br />
      Machine Learning
    </td>
    <td align="center">
      <a href="https://github.com/Shubhankarkmr">
        <img src="https://github.com/Shubhankarkmr.png" width="100px;" alt="Subhankar Kumar"/>
        <br />
        <sub><b>Subhankar Kumar</b></sub>
      </a>
      <br />
      Full-Stack Development
    </td>
    <td align="center">
      <a href="https://github.com/sayan-iiitian">
        <img src="https://github.com/sayan-iiitian.png" width="100px;" alt="Sayan Mandal"/>
        <br />
        <sub><b>Sayan Mandal</b></sub>
      </a>
      <br />
      UI/UX & Frontend
    </td>
  </tr>
</table>

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Wildlife Conservation Organizations** for providing valuable data and insights
- **Open Source Community** for the amazing tools and libraries
- **Animal Welfare NGOs** for their continuous support and collaboration
- **Contributors** who have helped improve this platform

## 📞 Support & Contact

- 📧 **Email**: wildguard360@example.com
- 🐛 **Issues**: [GitHub Issues](https://github.com/Poseidon120104/SC1_WildGuard360/issues)
- 💡 **Feature Requests**: [GitHub Discussions](https://github.com/Poseidon120104/SC1_WildGuard360/discussions)
- 📱 **Social Media**: Follow us for updates and conservation news

## 🌍 Making a Difference

Every day, countless animals need our help. WildGuard360 exists to bridge the gap between technology and conservation, making animal protection accessible to everyone. Join our community and be part of the solution!

---

<div align="center">
  <strong>Together, we can protect wildlife and ensure a better future for all animals! 🐾</strong>
</div>

