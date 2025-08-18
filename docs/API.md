# API Documentation

## Base URLs

- **Backend API**: `http://localhost:3000/api`
- **Flask ML API**: `http://localhost:5000`

## Authentication

Most endpoints require JWT authentication. Include the token in the Authorization header:

```
Authorization: Bearer <jwt_token>
```

## Endpoints

### Authentication

#### Register User
```http
POST /api/auth/register
Content-Type: application/json

{
  "firstName": "John",
  "lastName": "Doe",
  "email": "john@example.com",
  "password": "password123"
}
```

#### Login User
```http
POST /api/auth/login
Content-Type: application/json

{
  "email": "john@example.com",
  "password": "password123"
}
```

**Response:**
```json
{
  "success": true,
  "message": "Login successful",
  "user": {
    "id": "user_id",
    "firstName": "John",
    "lastName": "Doe",
    "email": "john@example.com"
  },
  "token": "jwt_token_here"
}
```

### User Management

#### Get User Profile
```http
GET /api/users/get-user/:id
Authorization: Bearer <token>
```

#### Update User Profile
```http
PUT /api/users/update-user
Authorization: Bearer <token>
Content-Type: application/json

{
  "firstName": "Updated Name",
  "location": "New York",
  "profession": "Wildlife Photographer"
}
```

#### Send Friend Request
```http
POST /api/users/friend-request
Authorization: Bearer <token>
Content-Type: application/json

{
  "requestTo": "user_id_to_send_request"
}
```

### Posts and Community

#### Get Posts
```http
POST /api/posts/
Authorization: Bearer <token>
Content-Type: application/json

{
  "search": "optional_search_term"
}
```

#### Create Post
```http
POST /api/posts/create-post
Authorization: Bearer <token>
Content-Type: application/json

{
  "description": "Found a beautiful bird in Central Park!",
  "image": "image_url_or_base64"
}
```

#### Like Post
```http
POST /api/posts/like/:postId
Authorization: Bearer <token>
```

#### Comment on Post
```http
POST /api/posts/comment/:postId
Authorization: Bearer <token>
Content-Type: application/json

{
  "comment": "Great photo! What species is this?",
  "from": "User Name"
}
```

### Machine Learning Services

#### Snake Classification
```http
POST /classify-snake
Content-Type: multipart/form-data

file: <image_file>
```

**Response:**
```json
{
  "classification": "non-venomous",
  "species": "garter-snake",
  "confidence": 0.95,
  "safety_info": {
    "venomous": false,
    "antivenom_required": false,
    "safety_instructions": "This is a harmless snake..."
  }
}
```

#### Bird Identification
```http
POST /classify-bird
Content-Type: multipart/form-data

file: <image_file>
```

**Response:**
```json
{
  "species": "African Crowned Crane",
  "scientific_name": "Balearica pavonina",
  "confidence": 0.92,
  "conservation_status": "Vulnerable",
  "habitat": "Wetlands and grasslands"
}
```

#### Dog Breed Recognition
```http
POST /classify-dog
Content-Type: multipart/form-data

file: <image_file>
```

#### Disease Diagnosis
```http
POST /symptoms
Content-Type: application/json

{
  "symptoms": ["fever", "lethargy", "loss_of_appetite"],
  "animal_type": "dog"
}
```

**Response:**
```json
{
  "possible_diseases": [
    {
      "disease": "Canine Parvovirus",
      "probability": 0.78,
      "severity": "High",
      "treatment": "Immediate veterinary care required",
      "description": "Highly contagious viral disease..."
    }
  ]
}
```

#### Forest Fire Prediction
```http
POST /submit-data
Content-Type: application/json

{
  "latitude": 40.7128,
  "longitude": -74.0060,
  "temperature": 85,
  "humidity": 30,
  "wind_speed": 15
}
```

## Error Responses

All endpoints return errors in the following format:

```json
{
  "success": false,
  "message": "Error description",
  "error": "Detailed error information"
}
```

## HTTP Status Codes

- `200` - Success
- `201` - Created
- `400` - Bad Request
- `401` - Unauthorized
- `403` - Forbidden
- `404` - Not Found
- `500` - Internal Server Error

## Rate Limiting

- API requests are limited to 100 requests per minute per IP
- ML endpoints are limited to 20 requests per minute due to computational requirements

## File Upload Guidelines

- Maximum file size: 10MB
- Supported formats: JPG, JPEG, PNG, GIF
- Images are automatically resized for ML processing
- Original images are stored securely with Cloudinary

## Authentication Flow

1. Register or login to get JWT token
2. Include token in Authorization header for protected routes
3. Token expires after 24 hours
4. Refresh token by logging in again

## Examples

### Complete User Registration and Post Creation

```javascript
// 1. Register user
const registerResponse = await fetch('/api/auth/register', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    firstName: 'John',
    lastName: 'Doe',
    email: 'john@example.com',
    password: 'password123'
  })
});

// 2. Login to get token
const loginResponse = await fetch('/api/auth/login', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    email: 'john@example.com',
    password: 'password123'
  })
});

const { token } = await loginResponse.json();

// 3. Create a post
const postResponse = await fetch('/api/posts/create-post', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${token}`
  },
  body: JSON.stringify({
    description: 'Spotted a rare bird today!',
    image: 'base64_image_data'
  })
});
```

### Animal Classification Example

```javascript
// Classify a snake image
const formData = new FormData();
formData.append('file', imageFile);

const response = await fetch('/classify-snake', {
  method: 'POST',
  body: formData
});

const result = await response.json();
console.log('Snake classification:', result);
```