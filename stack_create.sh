ENVIRONMENT_NAME="vlc-real-estate-app"
STACK_NAME="vlc-real-estate-app-nodes"
TEMPLATE_FILE="infrastructure/eks-nodes.yml"
PARAMETER_FILE="file://infrastructure/eks-nodes-parameters.json"
DEFAULT_REGION="us-east-1"

aws cloudformation deploy \
  --stack-name $STACK_NAME \
  --template-file $TEMPLATE_FILE \
  --parameter-overrides $PARAMETER_FILE \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
  --region $DEFAULT_REGION
