# ☕ ASH Cafe - Complete Full Stack Application

A modern, comprehensive cafe management system with customer website and admin portal, built with React, Node.js, and PostgreSQL.

!\[ASH Cafe](https://img.shields.io/badge/ASH-Cafe-brown?style=for-the-badge\&logo=coffee)
!\[React](https://img.shields.io/badge/React-18-blue?style=for-the-badge\&logo=react)
!\[Node.js](https://img.shields.io/badge/Node.js-Express-green?style=for-the-badge\&logo=node.js)
!\[PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?style=for-the-badge\&logo=postgresql)

## 🌟 Live Demo

* **Customer Website**: [Frontend Demo](http://localhost:5173)
* **Admin Portal**: [Admin Dashboard](http://localhost:5000)

## 📋 Project Overview

ASH Cafe is a complete full-stack web application that provides:

### 🌐 Customer-Facing Website (`ASH-Cafe/`)

* Modern, responsive React application
* Interactive menu with cart functionality
* Team showcase and gallery
* Online ordering system
* Smooth user experience with animations

### 🔧 Admin Management System (`ash-cafe-admin/`)

* Node.js/Express backend API
* Admin web portal for cafe management
* Complete CRUD operations for all entities
* File upload functionality
* User authentication and order management

### 🗄️ Database

* PostgreSQL database with complete schema
* Pre-populated with realistic sample data
* Proper relationships and constraints
* Exportable data structure

## 🚀 Quick Start

### Prerequisites

* Node.js (v16 or higher)
* PostgreSQL (v12 or higher)
* npm or yarn

### 1\. Clone \& Setup

```bash
git clone https://github.com/asnaarshad/ash-cafe.git
cd ash-cafe
```

### 2\. Database Setup

```bash
# Create database and import data
createdb ash-cafe
psql -d ash-cafe -f database\_export.sql
```

### 3\. Backend Setup

```bash
cd ash-cafe-admin
npm install

# Create .env file
cat > .env << EOL
DB\_USER=postgres
DB\_HOST=localhost
DB\_NAME=ash-cafe
DB\_PASS=your\_password
DB\_PORT=5432
PORT=5000
EOL

# Start backend server
node app.js
```

### 4\. Frontend Setup

```bash
cd ../ASH-Cafe
npm install

# Copy .env from backend
cp ../ash-cafe-admin/.env .env

# Start development server
npm run dev
```

### 5\. Access Applications

* **Customer Website**: http://localhost:5173
* **Admin Portal**: http://localhost:5000

## 📁 Project Structure

```
ash-cafe/
├── ASH-Cafe/                 # React Frontend Application
│   ├── src/
│   │   ├── components/       # Reusable React components
│   │   ├── assets/          # Static assets
│   │   └── ...
│   ├── public/              # Public assets
│   └── package.json
│
├── ash-cafe-admin/          # Node.js Backend Application
│   ├── config/              # Database configuration
│   ├── controllers/         # Business logic
│   ├── models/             # Database models
│   ├── routes/             # API routes
│   ├── public/             # Admin portal HTML
│   ├── uploads/            # File uploads
│   └── app.js              # Main server file
│
├── database\_export.sql      # Complete database with sample data
├── README.md               # This file
└── .gitignore             # Git ignore rules
```

## 🛠 Tech Stack

### Frontend

* **React 18** - Modern UI library
* **Vite** - Fast build tool
* **React Router** - Client-side routing
* **Axios** - HTTP client
* **CSS3** - Modern styling

### Backend

* **Node.js** - Runtime environment
* **Express.js** - Web framework
* **PostgreSQL** - Relational database
* **Multer** - File uploads
* **JWT** - Authentication
* **bcrypt** - Password hashing

## 🔌 API Endpoints

|Method|Endpoint|Description|
|-|-|-|
|GET|`/api/menu`|Get all menu items|
|GET|`/api/chefs`|Get all chefs|
|GET|`/api/gallery`|Get gallery items|
|GET|`/api/features`|Get cafe features|
|GET|`/api/offer`|Get special offers|
|POST|`/api/checkout`|Place an order|
|GET|`/api/orders`|Get all orders (admin)|
|GET|`/api/users`|Get all users (admin)|

See [Backend README](ash-cafe-admin/README.md) for complete API documentation.

## 📊 Database Schema

The application includes 8 main tables:

* **users** - Customer accounts (11 records)
* **menuitems** - Menu items (7 records)
* **chefs** - Staff profiles (4 records)
* **gallery** - Photo gallery (5 records)
* **features** - Cafe features (4 records)
* **offers** - Special offers (2 records)
* **orders** - Customer orders (9 records)
* **orderitems** - Order details (19 records)

## 🌟 Features

### Customer Features

* ✅ Browse interactive menu
* ✅ View detailed item descriptions and images
* ✅ Add items to shopping cart
* ✅ Place orders online
* ✅ Meet the team section
* ✅ Photo gallery
* ✅ Special offers display
* ✅ Responsive design for all devices

### Admin Features

* ✅ Complete menu management
* ✅ Staff profile management
* ✅ Order processing
* ✅ User account management
* ✅ Gallery management
* ✅ File upload functionality
* ✅ Special offers management
* ✅ Real-time data updates

## 🔧 Development

### Adding New Features

1. Backend: Add routes in `/routes`, controllers in `/controllers`
2. Frontend: Create components in `/src/components`
3. Database: Update models and run migrations

### Environment Variables

```env
DB\_USER=postgres
DB\_HOST=localhost
DB\_NAME=ash-cafe
DB\_PASS=your\_password
DB\_PORT=5432
PORT=5000
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

