# 🍰 ASH Cafe - Full Stack Web Application

A modern, full-stack cafe website built with React and Node.js, featuring a customer-facing website and an admin portal for cafe management.

## 📋 Table of Contents
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Database Setup](#database-setup)
- [Running the Application](#running-the-application)
- [API Endpoints](#api-endpoints)
- [Admin Portal](#admin-portal)
- [Environment Variables](#environment-variables)
- [Contributing](#contributing)
- [License](#license)

## ✨ Features

### Customer Website (Frontend)
- **Responsive Design**: Modern, mobile-first design
- **Interactive Menu**: Browse coffee and food items with images and descriptions
- **Team Showcase**: Meet the cafe's talented chefs and baristas
- **Photo Gallery**: Visual showcase of the cafe's atmosphere and offerings
- **Special Offers**: Featured promotions and deals
- **Online Ordering**: Add items to cart and place orders
- **Smooth Navigation**: Single-page application with smooth scrolling

### Admin Portal (Backend)
- **Menu Management**: Add, edit, and delete menu items
- **Staff Management**: Manage chef profiles and specialties
- **Gallery Management**: Upload and organize cafe photos
- **Order Management**: View and process customer orders
- **User Management**: Handle customer accounts
- **File Uploads**: Image upload functionality for menu items and gallery
- **RESTful API**: Complete API for all operations

## 🛠 Tech Stack

### Frontend
- **React 18** - Modern React with hooks
- **Vite** - Fast build tool and dev server
- **React Router DOM** - Client-side routing
- **Axios** - HTTP client for API calls
- **React Icons** - Icon library
- **React Scroll** - Smooth scrolling functionality
- **Swiper** - Touch slider component

### Backend
- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **PostgreSQL** - Database
- **Multer** - File upload middleware
- **CORS** - Cross-origin resource sharing
- **bcrypt** - Password hashing
- **JWT** - Authentication tokens
- **dotenv** - Environment variable management

## 📁 Project Structure

```
ASH-Cafe/                    # Frontend React Application
├── public/
│   ├── logo.png
│   └── vite.svg
├── src/
│   ├── components/          # React components
│   │   ├── Menu/
│   │   ├── Team/
│   │   ├── Gallery/
│   │   ├── Features/
│   │   ├── Offer/
│   │   └── Cart/
│   ├── assets/             # Static assets
│   ├── App.jsx            # Main App component
│   └── main.jsx           # Entry point
├── package.json
├── vite.config.js
└── README.md

ash-cafe-admin/              # Backend Node.js Application
├── config/
│   └── db.js              # Database configuration
├── controllers/           # Business logic
│   ├── menuController.js
│   ├── chefController.js
│   ├── galleryController.js
│   └── ...
├── models/                # Database models
│   ├── menuModel.js
│   ├── chefModel.js
│   └── ...
├── routes/                # API routes
│   ├── menuRoutes.js
│   ├── authRoutes.js
│   └── ...
├── uploads/               # Uploaded files
├── public/                # Admin portal HTML files
│   ├── index.html
│   ├── menu.html
│   └── ...
├── app.js                 # Main server file
└── package.json
```

## 📋 Prerequisites

Before running this application, make sure you have:

- **Node.js** (v16 or higher)
- **npm** or **yarn**
- **PostgreSQL** (v12 or higher)
- **Git**

## 🚀 Installation

### 1. Clone the Repository
```bash
git clone <repository-url>
cd "db project"
```

### 2. Install Frontend Dependencies
```bash
cd ASH-Cafe
npm install
```

### 3. Install Backend Dependencies
```bash
cd ../ash-cafe-admin
npm install
```

## 🗄 Database Setup

### 1. Create PostgreSQL Database
```sql
CREATE DATABASE "ash-cafe";
```

### 2. Database Schema
The application uses the following tables:
- `users` - Customer accounts
- `menuitems` - Cafe menu items
- `chefs` - Staff profiles
- `gallery` - Photo gallery
- `features` - Cafe features
- `offers` - Special promotions
- `orders` - Customer orders
- `orderitems` - Order line items

### 3. Sample Data
The database comes pre-populated with sample data including:
- 7 coffee menu items (Cappuccino, Latte, Americano, etc.)
- 4 chef profiles
- Gallery images and cafe features
- Sample orders and customer data

## ▶️ Running the Application

### 1. Set Up Environment Variables
Create a `.env` file in both directories:

**ASH-Cafe/.env** and **ash-cafe-admin/.env**:
```env
DB_USER=postgres
DB_HOST=localhost
DB_NAME=ash-cafe
DB_PASS=your_password
DB_PORT=5433
PORT=5000
```

### 2. Start the Backend Server
```bash
cd ash-cafe-admin
node app.js
```
Backend will run on: http://localhost:5000

### 3. Start the Frontend Development Server
```bash
cd ASH-Cafe
npm run dev
```
Frontend will run on: http://localhost:5173

### 4. Access the Applications
- **Customer Website**: http://localhost:5173
- **Admin Portal**: http://localhost:5000

## 🔌 API Endpoints

### Menu
- `GET /api/menu` - Get all menu items
- `POST /api/menu` - Add new menu item
- `PUT /api/menu/:id` - Update menu item
- `DELETE /api/menu/:id` - Delete menu item

### Chefs
- `GET /api/chefs` - Get all chefs
- `POST /api/chefs` - Add new chef
- `PUT /api/chefs/:id` - Update chef
- `DELETE /api/chefs/:id` - Delete chef

### Gallery
- `GET /api/gallery` - Get all gallery items
- `POST /api/gallery` - Add new gallery item
- `DELETE /api/gallery/:id` - Delete gallery item

### Orders
- `GET /api/orders` - Get all orders
- `POST /api/checkout` - Create new order
- `GET /api/orders/:id` - Get specific order

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - User login

## 👨‍💼 Admin Portal

The admin portal provides a web interface for managing:
- **Menu Items**: Add, edit, delete coffee and food items
- **Staff Profiles**: Manage chef information and specialties
- **Gallery**: Upload and organize cafe photos
- **Orders**: View and process customer orders
- **Users**: Manage customer accounts
- **Features**: Update cafe features and services
- **Offers**: Create and manage special promotions

Access the admin portal at: http://localhost:5000

## 🔧 Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `DB_USER` | PostgreSQL username | postgres |
| `DB_HOST` | Database host | localhost |
| `DB_NAME` | Database name | ash-cafe |
| `DB_PASS` | Database password | - |
| `DB_PORT` | Database port | 5433 |
| `PORT` | Server port | 5000 |

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Built with love for coffee enthusiasts
- Icons by React Icons
- UI components inspired by modern web design principles

---

**Happy Coding! ☕**
