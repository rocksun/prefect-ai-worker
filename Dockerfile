# We're using the latest version of Prefect with Python 3.10
FROM prefecthq/prefect:2.19-python3.10

# Install ffmpeg
# RUN tapt-get add --no-cache ffmpeg

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    # Required for arm64 builds
    ffmpeg libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libatspi2.0-0 libxcomposite1 libxdamage1 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

    COPY requirements.txt .
RUN pip install --upgrade pip --trusted-host mirrors.aliyun.com -i http://mirrors.aliyun.com/pypi/simple/ 
RUN pip install -r requirements.txt --trusted-host mirrors.aliyun.com -i http://mirrors.aliyun.com/pypi/simple/ --no-cache-dir




# # Add our flow code to the image
# COPY flows /opt/prefect/flows

# # Run our flow script when the container starts
# CMD ["python", "flows/prefect-docker-guide-flow.py"]