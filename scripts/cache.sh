#!/bin/bash -e

Cloudflare_zone=4a1f5f6d78237b32b1855255227d0bdf
Cloudflare_API=80babc1d9fb8ecb349c2b8e0f1ffa69d7c0e5

if [ -z "${Cloudflare_zone}" ]; then
  echo "Need to set Cloudflare_zone variable"
  exit 1
fi
if [ -z "${Cloudflare_API}" ]; then
  echo "Need to set Cloudflare_API variable"
  exit 1
fi

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/${Cloudflare_zone}/purge_cache" \
    -H "X-Auth-Email: arnaud@ligny.org" \
    -H "X-Auth-Key: ${Cloudflare_API}" \
    -H "Content-Type: application/json" \
    --data "{'purge_everything':true}"

exit 0
