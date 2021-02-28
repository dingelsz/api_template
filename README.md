# api_template
This project is a template for a scalable API. The goals of the project are to:

- Provide simple REST API
- Use SSL for secure communication
- Enable the system to scale horizontally
- Provide high availability

The tech stack uses:
- python + Flask for API logic
- gunicorn for WSGI
- nginx as a reverse proxy with load balancing 
- Docker for reproducable environements

# TODO
- Setup a system for coordinating nodes (Kubernetes?)
- Move away from self signed certificates
