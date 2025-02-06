Sure! Here's the complete code for the Sample API Guide:

```markdown
# Sample API Guide

Welcome to the Sample API Guide. This API allows developers to access and manage data related to [specific functionality]. It provides endpoints for creating, reading, updating, and deleting resources.

## Authentication

To use the Sample API, you need to authenticate using an API key. Include the API key in the `Authorization` header of your requests.

## Endpoints

### Get All Resources
- **Method**: GET
- **URL**: `/api/resources`
- **Description**: Retrieves a list of all resources.

### Get Resource by ID
- **Method**: GET
- **URL**: `/api/resources/{id}`
- **Description**: Retrieves a specific resource by its ID.

### Create Resource
- **Method**: POST
- **URL**: `/api/resources`
- **Description**: Creates a new resource.
- **Request Body**:
  ```json
  {
    "name": "string",
    "description": "string"
  }
  ```

### Update Resource
- **Method**: PUT
- **URL**: `/api/resources/{id}`
- **Description**: Updates an existing resource.
- **Request Body**:
  ```json
  {
    "name": "string",
    "description": "string"
  }
  ```

### Delete Resource
- **Method**: DELETE
- **URL**: `/api/resources/{id}`
- **Description**: Deletes a specific resource by its ID.

## Request and Response Examples

### Get All Resources
- **Request**:
  ```bash
  curl -X GET "https://api.example.com/api/resources" -H "Authorization: Bearer YOUR_API_KEY"
  ```
- **Response**:
  ```json
  [
    {
      "id": 1,
      "name": "Resource 1",
      "description": "Description of Resource 1"
    },
    {
      "id": 2,
      "name": "Resource 2",
      "description": "Description of Resource 2"
    }
  ]
  ```

### Get Resource by ID
- **Request**:
  ```bash
  curl -X GET "https://api.example.com/api/resources/1" -H "Authorization: Bearer YOUR_API_KEY"
  ```
- **Response**:
  ```json
  {
    "id": 1,
    "name": "Resource 1",
    "description": "Description of Resource 1"
  }
  ```

### Create Resource
- **Request**:
  ```bash
  curl -X POST "https://api.example.com/api/resources" -H "Authorization: Bearer YOUR_API_KEY" -H "Content-Type: application/json" -d '{
    "name": "New Resource",
    "description": "Description of New Resource"
  }'
  ```
- **Response**:
  ```json
  {
    "id": 3,
    "name": "New Resource",
    "description": "Description of New Resource"
  }
  ```

### Update Resource
- **Request**:
  ```bash
  curl -X PUT "https://api.example.com/api/resources/1" -H "Authorization: Bearer YOUR_API_KEY" -H "Content-Type: application/json" -d '{
    "name": "Updated Resource",
    "description": "Updated Description of Resource"
  }'
  ```
- **Response**:
  ```json
  {
    "id": 1,
    "name": "Updated Resource",
    "description": "Updated Description of Resource"
  }
  ```

### Delete Resource
- **Request**:
  ```bash
  curl -X DELETE "https://api.example.com/api/resources/1" -H "Authorization: Bearer YOUR_API_KEY"
  ```
- **Response**:
  ```json
  {
    "message": "Resource deleted successfully"
  }
  ```
