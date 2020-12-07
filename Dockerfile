FROM python:stretch
WORKDIR /eks-deploy-proj
COPY . /eks-deploy-proj
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
