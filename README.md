[![Build Status](https://travis-ci.org/rajatvig/docker-pactbroker-client.svg?branch=master)](https://travis-ci.org/rajatvig/docker-pactbroker-client)
[![](https://images.microbadger.com/badges/image/rajatvig/pactbroker-client.svg)](http://microbadger.com/images/rajatvig/pactbroker-client "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/rajatvig/pactbroker-client.svg)](http://microbadger.com/images/rajatvig/pactbroker-client "Get your own version badge on microbadger.com")

### Pact Broker Client

#### Overview
This image run the [Pact Broker Client](https://github.com/bethesque/pact_broker-client) in a Docker Container.

#### How-to/usage
```bash
docker run -v "./pacts:/pacts" -e URI_BROKER=http://localhost rajatvig/pactbroker-client:latest
```
