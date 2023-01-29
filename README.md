## Run Grafana instance

Run the Grafana Docker container
Start the Docker container by binding Grafana to external port 3000.

```bash
docker run -d -p 3000:3000 --name grafana grafana/grafana-oss
docker ps
```

Try it out, default admin user credentials are admin/admin.

Further documentation can be found at http://docs.grafana.org/installation/docker/.

## Run Grafana container with persistent storage (recommended)
```bash
# Remove if exists
docker rm grafana

# create a persistent volume for your data in /var/lib/grafana (database and plugins)
docker volume create grafana-storage

# start grafana
docker run --name grafana \
  -d \
  -p 3000:3000 \
  -v grafana-storage:/var/lib/grafana \
  --network jsonnet-tutorial-net \
  grafana/grafana-oss
```

## Open Grafana Web Console

Go to [Grafana Admin Panel](https://localhost:3000)

Use admin/admin as username/password while authenticating. 

After the login, the UI will ask for a new password. Please, use `password` value. It is used inside the scripts.


