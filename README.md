# Information System of Work Search

A comprehensive web-based job search and recruitment platform built with Jakarta EE 10. This system enables employers to post job vacancies and employees to search and apply for positions.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technology Stack](#technology-stack)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Building the Project](#building-the-project)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## 🎯 Overview

The Information System of Work Search is a full-stack web application designed to streamline the job recruitment process. It provides a platform where:
- **Employers** can create, manage, and track job vacancies
- **Employees** can search for jobs, view details, and submit applications
- Both parties can manage their profiles and interact through the system

## ✨ Features

### For Employers
- **Vacancy Management**: Create, edit, and delete job postings
- **Application Tracking**: View and manage applications from candidates
- **Profile Management**: Maintain company profile and information
- **Vacancy Status Control**: Open or close vacancies as needed

### For Employees
- **Job Search**: Search vacancies with various filtering options
- **Sorting Options**: 
  - By Relevance
  - Alphabetically (A-Z and Z-A)
  - By Date (New to Old and Old to New)
- **Application Submission**: Apply for jobs with personalized responses
- **Profile Management**: Maintain personal profile and track applications

### General Features
- **User Authentication**: Secure login and signup system
- **Responsive Design**: User-friendly interface with custom CSS styling
- **Real-time Search**: Keyword-based search with relevance scoring
- **Popup Notifications**: Success/error messages for user actions

## 🛠 Technology Stack

### Backend
- **Java 11**: Core programming language
- **Jakarta EE 10**: Enterprise application framework
- **Jakarta Servlet**: Web application handling
- **JSP (JavaServer Pages)**: Dynamic web page generation
- **JSTL**: JSP Standard Tag Library for templating

### Frontend
- **HTML5**: Markup structure
- **CSS3**: Custom styling
- **JavaScript**: Client-side interactivity

### Build & Deployment
- **Maven 3**: Dependency management and build automation
- **Apache Tomcat 10.1**: Servlet container
- **WAR Packaging**: Web application archive format

## 📦 Prerequisites

Before you begin, ensure you have the following installed:
- **Java Development Kit (JDK) 11** or higher
- **Apache Maven 3.6** or higher
- **Apache Tomcat 10.1** or compatible Jakarta EE 10 server
- **Git** (for cloning the repository)

## 🚀 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Smegalex/CW1.Tunik-Oleksandr.Information-system-of-work-search.git
   cd CW1.Tunik-Oleksandr.Information-system-of-work-search
   ```

2. **Build the project**
   ```bash
   mvn clean install
   ```

3. **Deploy to Tomcat**
   - Locate the generated WAR file in `target/CW1.Tunik-Oleksandr.Information-system-of-work-search-1.0-SNAPSHOT.war`
   - Copy it to your Tomcat `webapps` directory
   - Or deploy using your IDE's built-in deployment tools

## 📖 Usage

### Starting the Application

1. Start your Tomcat server
2. Access the application at: `http://localhost:8080/CW1.Tunik-Oleksandr.Information-system-of-work-search-1.0-SNAPSHOT/`
3. You'll be redirected to the main vacancies page

### User Workflows

#### As an Employer:
1. **Sign up** for an employer account
2. **Log in** to your account
3. **Create vacancies** from your profile page
4. **View applications** submitted by employees
5. **Edit or delete** your vacancies as needed

#### As an Employee:
1. **Sign up** for an employee account
2. **Log in** to your account
3. **Search** for jobs using keywords
4. **View** vacancy details
5. **Submit** applications for positions

#### Search and Filter:
- Use the search bar to find vacancies by keywords
- Sort results using the dropdown menu:
  - **By Relevance**: Best matching results first
  - **Alphabetically**: Sort by vacancy title (A-Z)
  - **Contr Alphabetically**: Sort by vacancy title (Z-A)
  - **New to Old**: Most recent vacancies first
  - **Old to New**: Oldest vacancies first

## 📁 Project Structure

```
CW1.Tunik-Oleksandr.Information-system-of-work-search/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/igor_sikorsky_ist_hub/tunik_oleksandr/cw1_information_system_of_work_search/
│       │       ├── controllers/        # Servlet controllers
│       │       │   ├── VacancyController.java
│       │       │   └── UserController.java
│       │       ├── dao/                # Data Access Objects
│       │       │   ├── VacancyDao.java
│       │       │   ├── EmployeeDao.java
│       │       │   ├── EmployerDao.java
│       │       │   └── InMemory*Dao.java (implementations)
│       │       ├── model/              # Domain models
│       │       │   ├── Vacancy.java
│       │       │   ├── Employee.java
│       │       │   ├── Employer.java
│       │       │   ├── VacancyAnswer.java
│       │       │   └── Profile.java
│       │       ├── web/                # Web listeners
│       │       └── util/               # Utility classes
│       ├── resources/
│       │   └── META-INF/
│       │       └── persistence.xml     # JPA configuration
│       └── webapp/
│           ├── WEB-INF/
│           │   ├── jsp/                # JSP view templates
│           │   │   ├── main.jsp
│           │   │   ├── vacancy_details.jsp
│           │   │   ├── account/        # Login/signup pages
│           │   │   ├── employer/       # Employer-specific pages
│           │   │   └── employee/       # Employee-specific pages
│           │   ├── web.xml             # Web application configuration
│           │   └── beans.xml           # CDI configuration
│           ├── resources/
│           │   ├── css/
│           │   │   └── styles.css      # Application styles
│           │   └── img/                # Image assets
│           └── index.html              # Application entry point
├── pom.xml                             # Maven configuration
└── README.md                           # This file
```

## 🔨 Building the Project

### Using Maven

**Clean and compile:**
```bash
mvn clean compile
```

**Run tests:**
```bash
mvn test
```

**Package as WAR:**
```bash
mvn package
```

**Clean, test, and package:**
```bash
mvn clean package
```

### Using NetBeans

This project includes NetBeans configuration (`nb-configuration.xml`):
1. Open the project in NetBeans
2. Right-click on the project → Clean and Build
3. Deploy to your configured server

## 🚢 Deployment

### Tomcat Deployment

**Manual Deployment:**
1. Build the WAR file: `mvn clean package`
2. Copy `target/*.war` to `$TOMCAT_HOME/webapps/`
3. Start Tomcat server
4. Access at `http://localhost:8080/[war-name]/`

**IDE Deployment:**
- Use your IDE's deployment features (NetBeans, IntelliJ IDEA, Eclipse)
- Configure the Jakarta EE 10 compatible server
- Run/Debug the application directly from the IDE

### Database Configuration

The application currently uses in-memory data storage. For persistent storage:
1. Configure database settings in `src/main/resources/META-INF/persistence.xml`
2. Update the DAO implementations to use JPA entity managers
3. Add appropriate database drivers to `pom.xml`

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

### Coding Standards
- Follow Java naming conventions
- Write clear, commented code
- Test your changes before submitting
- Update documentation as needed

## 📄 License

This project is an academic coursework (CW1) created by **Tunik Oleksandr** for **Igor Sikorsky IST Hub**.

## 👤 Author

**Tunik Oleksandr**
- Institution: Igor Sikorsky Kyiv Polytechnic Institute
- Project: Coursework 1 - Information System of Work Search

## 🙏 Acknowledgments

- Igor Sikorsky Kyiv Polytechnic Institute
- Jakarta EE Community
- Apache Tomcat Project

---

**Note**: This is an educational project developed as part of a coursework assignment. It demonstrates the implementation of a full-stack web application using Jakarta EE technologies.