# no-pypoetry

![Docker Pull Count](https://img.shields.io/docker/pulls/abersh/no-pypoetry)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/abersh/no-pypoetry)

build image without pypoetry from a pypoetry project

```dockerfile
FROM abersh/no-pypoetry as requirements

FROM python:3.7

# ... yourself commands

COPY --from=requirements /src/requirements.txt .

RUN pip install -r requirements.txt

# ... yourself commands
```
