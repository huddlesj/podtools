#!/bin/sh
while sleep 1; do curl -o /dev/null -s -w "%{http_code}\n"   istio-ingressgateway.istio-system.svc/productpage ; done
