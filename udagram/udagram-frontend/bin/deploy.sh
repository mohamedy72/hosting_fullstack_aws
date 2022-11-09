aws s3api create-bucket --bucket mohamed-udagram --region us-east-1
aws s3 sync --acl public-read ./www s3://mohamed-udagram/
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://mohamed-udagram/