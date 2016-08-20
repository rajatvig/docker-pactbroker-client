### Pact Broker Client

#### Overview
This image run the [Pact Broker Client](https://github.com/bethesque/pact_broker-client) in a Docker Container.

#### How-to/usage
```bash
docker run -v "./pacts:/pacts" -e URI_BROKER=http://localhost rajatvig/pactbroker-client:latest
```
