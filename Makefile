install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64

lint:
	hadolint Dockerfile
	pylint --disable=R,C app.py