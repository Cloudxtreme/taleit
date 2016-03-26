# Set default required environment variables
export WEB_PORT=3000

# Load variables from .env, if file exists
if [ -f .env ]; then
  set -a
  source .env
  set +a
fi

# Locker docker env variables for 'taleit' vm
eval $(docker-machine env taleit)
