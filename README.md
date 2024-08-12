# Araç Kiralama Projesi: Masaüstü Uygulaması Geliştirme Rehberi

This guide focuses on developing an advanced car rental system desktop application using Java and Swing technologies. The project covers user interface design, database management, and business logic development. It also details the overall structure, modules, and database setup.

## Project Purpose and Features

### General Purpose
The car rental system is designed to help companies manage their vehicles, serve customers, and facilitate reservation processes. The system stores detailed information about the vehicles, allows users to search based on their needs, and processes reservations.

### Features

#### Vehicle Management
- Add, update, and delete vehicles.
- Manage vehicle information (brand, model, license plate, color, mileage, fuel type, transmission type, etc.).

#### Model and Brand Management
- Add, update, and delete vehicle models and brands.
- Manage detailed information about models (type, fuel type, transmission type, production year, etc.).

#### Reservation Management
- Make, update, and cancel vehicle reservations.
- Check vehicle availability.
- Manage user information (name, ID number, phone number, email).

#### Search and Filtering
- Search and filter vehicles based on specific criteria (brand, model, fuel type, transmission type, type).
- Search vehicles by license plate number.

## Project Structure

The project is organized into four main modules: Entity, DAO, Business, and View.

### Entity Module
- Defines the database tables and their corresponding entity objects.
- Includes basic entity objects like User, Brand, Model, Vehicle, and Reservation.
- Establishes relationships between objects.

### DAO (Data Access Object) Module
- Provides an interface for database access and operations.
- Manages the processes of saving, updating, and deleting entity objects in the database.
- Handles data retrieval operations from the database.

### Business Module
- Manages the business logic and performs core operations within the application.
- Handles business logic operations like pricing and car rental calculations.
- Interacts with the DAO module.

### View Module
- Manages the user interface (UI) and facilitates user interaction.
- Displays information to the user, such as vehicle lists and rental screens.
- Passes user input to the business layer to initiate operations.

## Database Setup

### Requirements
- PostgreSQL must be installed.
- The `rentacarDatabase.sql` file must be available.

### Steps

1. **Start PostgreSQL**: Ensure that the PostgreSQL server is running.
2. **Create a New Database**: Use the PostgreSQL terminal or a tool like pgAdmin to create a new database.
