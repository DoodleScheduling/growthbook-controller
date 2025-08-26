FROM gcr.io/distroless/static:latest@sha256:f2ff10a709b0fd153997059b698ada702e4870745b6077eff03a5f4850ca91b6
WORKDIR /
COPY manager manager
USER 65532:65532

# User env is required by opentelemetry-go
ENV USER=growthbook-controller

ENTRYPOINT ["/manager"]
