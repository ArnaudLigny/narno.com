#!/bin/bash -e

if [ -z "${Cloudflare_zone}" ]; then
  echo "Need to set Cloudflare_zone variable"
  exit 1
fi
if [ -z "${Cloudflare_email}" ]; then
  echo "Need to set Cloudflare_email variable"
  exit 1
fi
if [ -z "${Cloudflare_API}" ]; then
  echo "Need to set Cloudflare_API variable"
  exit 1
fi

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/${Cloudflare_zone}/purge_cache" \
    -H "X-Auth-Email: ${Cloudflare_email}" \
    -H "X-Auth-Key: ${Cloudflare_API}" \
    -H "Content-Type: application/json" \
    --data "{'purge_everything':true}"

exit 0