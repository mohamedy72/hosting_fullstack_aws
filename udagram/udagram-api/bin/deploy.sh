set -x
set -e
eb init udagram-api --platform node.js --region us-east-1
eb create --sample udagram-api-env || true
eb use udagram-api-env
eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_BUCKET=$AWS_BUCKET AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY POSTGRES_PORT=$POSTGRES_PORT PORT=$PORT JWT_SECRET=$JWT_SECRET POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL
eb deploy udagram-api-env
