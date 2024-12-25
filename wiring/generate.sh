#!/usr/bin/env bash
echo "Generating wiring diagrams..."
wireviz -f hp -p milo-v2.0.yaml milo-v2.0-*.yaml
