AWS_VAULT_USER=test-biomerieux
# Initialiser Terraform avec la configuration du backend
echo "Initialisation de Terraform avec la configuration du backend : $BACKEND_CONFIG"
aws-vault exec $AWS_VAULT_USER -- terraform init 

# Planifier les changements d'infrastructure
echo "Planification des changements d'infrastructure avec le fichier de variables : $VARS_FILE"
aws-vault exec $AWS_VAULT_USER -- terraform plan 

# Appliquer les changements
echo "Application des changements d'infrastructure avec le fichier de variables : $VARS_FILE"
aws-vault exec $AWS_VAULT_USER -- terraform apply 
