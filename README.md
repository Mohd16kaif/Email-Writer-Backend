# Email Reply Generator Backend

This is the backend service for the **Email Reply Generator**, built using **Spring Boot** and powered by the **Google Gemini API**. It generates intelligent and context-aware replies to emails, making communication faster, smarter, and more efficient.

## Features

* Uses Google Gemini API for AI-powered email replies
* Lightweight Spring Boot RESTful API
* JSON-based input/output for easy integration
* Secure and scalable architecture

<img width="1000" height="600" alt="Screenshot 2025-07-11 202115" src="https://github.com/user-attachments/assets/f70e9cbf-5185-4ea1-9f68-40a3f4246546" />

## How It Works

1. The frontend sends the user's email content (email thread or last received email) to the backend.
2. The backend processes the request and forwards the email context to Google Gemini API.
3. The Gemini API generates a relevant and concise reply.
4. The backend returns the AI-generated reply as a JSON response.

## Getting Started

### Prerequisites

* Java 17 or higher
* Maven
* Google Gemini API Key (get it from your Google Cloud Console)
* 

### Installation

1. **Clone the repository:**

```bash
git clone https://github.com/yourusername/email-writer-backend.git
cd email-writer-backend
```

2. **Add your Gemini API key:**

Create a `.env` file or update `application.properties`:

```properties
gemini.api.key=YOUR_API_KEY_HERE
```

3. **Build the project:**

```bash
mvn clean install
```

4. **Run the application:**

```bash
mvn spring-boot:run
```

## API Endpoint

**POST** `/api/reply`

### Request Body:

```json
{
  "emailContent": "Hi, are you available for a meeting tomorrow at 3 PM?"
}
```

### Response:

```json
{
  "reply": "Yes, I am available at 3 PM. Looking forward to our meeting."
}
```

## Tech Stack

* Java
* Spring Boot
* Google Gemini API
* Maven

> ✨ This backend works seamlessly with the **Email Reply Chrome Extension**. Together, they offer an AI-powered communication experience directly inside Gmail.
