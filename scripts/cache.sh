#!/bin/bash
set -e

Cloudflare_zone=4a1f5f6d78237b32b1855255227d0bdf
Cloudflare_API=80babc1d9fb8ecb349c2b8e0f1ffa69d7c0e5

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/$Cloudflare_zone/purge_cache" \
    -H "X-Auth-Email: arnaud@ligny.org" \
    -H "X-Auth-Key: $Cloudflare_API" \
    -H "Content-Type: application/json" \
    --data "{'purge_everything':true}"
