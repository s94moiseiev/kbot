# Open-telemetry observability

Sample configuration for Kbot that send logs to [OpenTelemetry Collector] and metrics to [OpenTelemetry Collector] or [Prometheus].

## Prerequisites

- [Docker]
- [Docker Compose]

## How to run

```bash
export TELE_TOKEN=<TOKEN>
docker-compose up
```
## Demo
![prometeus](https://github.com/s94moiseiev/kbot/raw/main/otel/img/prometeus.png)

![LOKI](https://github.com/s94moiseiev/kbot/raw/main/otel/img/loki.png)
