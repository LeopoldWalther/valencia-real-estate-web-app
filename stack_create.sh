ENVIRONMENT_NAME="vlc"
STACK_NAME="network"
TEMPLATE_FILE="infrastructure/hawa-network.yml"
PARAMETER_FILE="file://infrastructure/hawa-network-parameters.json"
DEFAULT_REGION="us-east-1"

aws cloudformation deploy \
  --stack-name $STACK_NAME \
  --template-file $TEMPLATE_FILE \
  --parameter-overrides $PARAMETER_FILE \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
  --region $DEFAULT_REGION

