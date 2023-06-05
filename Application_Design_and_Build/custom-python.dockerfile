FROM python:3.12.0b1-buster

# Identify the maintainer of an image
LABEL version ="1.0.0"
LABEL maintainer="gsorokosz@gmail.com"

# Add python code
ADD create_pyramind.py /

# Execute python script
CMD ["python3", "./create_pyramind.py"]


