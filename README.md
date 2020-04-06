# no-pypoetry
build image without pypoetry from a pypoetry project

```dockerfile
FROM abersh/no-pypoetry as requirements

FROM python:3.7

# ... yourself commands

COPY --from=requirements /src/requirements.txt .

RUN pip install -r requirements.txt

# ... yourself commands
```
