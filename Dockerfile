FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install django

EXPOSE  8000
CMD ["python", "manager.py migrate", "-p 8000"]
CMD ["python", "manager.py runserver", "-p 8000"]
