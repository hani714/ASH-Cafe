# 🔧 ASH Cafe Admin - Backend API & Admin Portal

The backend server and admin portal for the ASH Cafe application, providing RESTful APIs and administrative interface for cafe management.

## 🚀 Quick Start

### Prerequisites
- Node.js (v16+)
- PostgreSQL (v12+)
- npm or yarn

### Installation & Setup
```bash
# Install dependencies
npm install

# Set up environment variables
cp ../.env .env

# Start the server
node app.js
```

The server will start on http://localhost:5000

## 📚 API Documentation

### Base URL
```
http://localhost:5000
```

### Menu Items API
```
GET    /api/menu           # Get all menu items
POST   /api/menu           # Create new menu item
PUT    /api/menu/:id       # Update menu item
DELETE /api/menu/:id       # Delete menu item
```

### Chefs API
```
GET    /api/chefs          # Get all chefs
POST   /api/chefs          # Create new chef
PUT    /api/chefs/:id      # Update chef
DELETE /api/chefs/:id      # Delete chef
```

### Gallery API
```
GET    /api/gallery        # Get all gallery items
POST   /api/gallery        # Upload new image
DELETE /api/gallery/:id    # Delete gallery item
```

### Orders API
```
GET    /api/orders         # Get all orders
POST   /api/checkout       # Create new order
GET    /api/orders/:id     # Get specific order
```

### Features API
```
GET    /api/features       # Get all features
POST   /api/features       # Create new feature
PUT    /api/features/:id   # Update feature
DELETE /api/features/:id   # Delete feature
```

### Offers API
```
GET    /api/offer          # Get all offers
POST   /api/offer          # Create new offer
PUT    /api/offer/:id      # Update offer
DELETE /api/offer/:id      # Delete offer
```

### Authentication API
```
POST   /api/auth/register  # Register new user
POST   /api/auth/login     # User login
```

### Users API
```
GET    /api/users          # Get all users
GET    /api/users/:id      # Get specific user
PUT    /api/users/:id      # Update user
DELETE /api/users/:id      # Delete user
```

## 🗂 Database Schema

### Tables
- **users**: Customer accounts and authentication
- **menuitems**: Coffee and food items with pricing
- **chefs**: Staff profiles and specialties
- **gallery**: Photo gallery with descriptions
- **features**: Cafe features and services
- **offers**: Special promotions and deals
- **orders**: Customer order records
- **orderitems**: Individual items within orders

### Key Relationships
- `orders.user_id` → `users.user_id`
- `orderitems.order_id` → `orders.order_id`
- `orderitems.item_id` → `menuitems.item_id`

## 📁 File Upload

Images are uploaded to the `/uploads` directory and served statically. Supported formats:
- JPEG (.jpg, .jpeg)
- PNG (.png)
- SVG (.svg)

File naming convention: `image-{timestamp}.{extension}`

## 🔐 Authentication

The API uses JWT (JSON Web Tokens) for authentication. Include the token in the Authorization header:
```
Authorization: Bearer <jwt_token>
```

## 🌐 Admin Portal

Access the admin web interface at: http://localhost:5000

### Available Admin Pages:
- `/` - Dashboard
- `/menu.html` - Menu management
- `/chefs.html` - Staff management
- `/gallery.html` - Photo gallery
- `/features.html` - Features management
- `/offer.html` - Offers management
- `/orders.html` - Order management
- `/users.html` - User management

## 🔧 Configuration

### Environment Variables
```env
DB_USER=postgres
DB_HOST=localhost
DB_NAME=ash-cafe
DB_PASS=your_password
DB_PORT=5433
PORT=5000
```

### Dependencies
```json
{
  "express": "Web framework",
  "pg": "PostgreSQL client",
  "multer": "File upload middleware",
  "cors": "Cross-origin resource sharing",
  "bcrypt": "Password hashing",
  "jsonwebtoken": "JWT authentication",
  "dotenv": "Environment variables"
}
```

## 📝 Development

### Project Structure
```
ash-cafe-admin/
├── config/
│   └── db.js              # Database connection
├── controllers/           # Business logic
├── models/               # Database models
├── routes/               # API routes
├── public/               # Admin HTML files
├── uploads/              # Uploaded images
└── app.js               # Main server file
```

### Adding New Endpoints
1. Create model in `/models`
2. Create controller in `/controllers`
3. Create route in `/routes`
4. Register route in `app.js`

## 🐛 Troubleshooting

### Common Issues
- **Database connection fails**: Check PostgreSQL is running and credentials are correct
- **File uploads not working**: Ensure `/uploads` directory exists and has write permissions
- **CORS errors**: Verify CORS is enabled in `app.js`
- **Port already in use**: Change PORT in `.env` file

### Logs
Check server logs for detailed error information when issues occur.

---

**Backend by ASH Cafe Development Team** ⚡
