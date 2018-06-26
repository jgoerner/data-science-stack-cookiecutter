# Data Science Stack - Cookiecutter
Cookiecutter to launch an awesome Data Science toolstack in Docker.

# See it in action
[![asciicast](https://asciinema.org/a/CcZ9duIdP0pBfZWxw5Nt1tFVZ.png)](https://asciinema.org/a/CcZ9duIdP0pBfZWxw5Nt1tFVZ)

# Overall Architecture
![architecture](./architecture.png)

# Used Variables
The following table provides an overview about parameter, that are queried by cookiecutter (and why)

| Name | Description | Injected in Services |
| --- | --- | --- | 
| **project_name** | *Name of your project* | - |
| **jupyter_password** | *Password to protect your Jupyter service* | Jupyter |
| **postgres_db_password** | *Password of standard postgres user* | Postgres |
| **shared_db_password** | *Password for shared database* | Airflow<br>Jupyter<br>Postgres |
| **superset_db_password** | *Password for superset database* | Postgres<br>Superset |
| **superset_admin_password** | *Password for superset admin user* | Superset |
| **minio_access_key** | *Access key for Minio store* | Airflow<br>Apistar<br>Jupyter<br>Minio |
| **minio_secret_key** | *Secret key for Minio store* | Airflow<br>Apistar<br>Jupyter<br>Minio |
