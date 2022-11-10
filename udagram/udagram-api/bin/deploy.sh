set -x
set -e
eb init udagram-api --platform node.js --region us-east-1
eb create --sample udagram-api-env || true
eb use udagram-api-env

eb deploy udagram-api-env