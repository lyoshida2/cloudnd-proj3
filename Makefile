REGION ?= us-east-1

docker-login:
	aws ecr get-login-password --region $(REGION) | docker login --username AWS --password-stdin $(AWS_ACCOUNT_ID).dkr.ecr.$(REGION).amazonaws.com