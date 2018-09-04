ENV=$1
MYSQL_PW=$2

if [[ $ENV = "prod" ]]; then
  echo "DO NOT USE PROD"
  exit 1
fi

db_name="magento_perf"
db_hostname="$ENV-aurora-db-read-weighted.mgnonprod.co.uk"

oauth_consumer_key=$(mysql -sN -u root -p${MYSQL_PW} -h ${db_hostname} ${db_name} -e "SELECT oauth_consumer.key FROM oauth_consumer WHERE name=\"graphql\" LIMIT 1;")
oauth_consumer_secret=$(mysql -sN -u root -p${MYSQL_PW} -h ${db_hostname} ${db_name} -e "SELECT oauth_consumer.secret FROM oauth_consumer WHERE name=\"graphql\" LIMIT 1;")
oauth_token=$(mysql -sN -u root -p${MYSQL_PW} -h ${db_hostname} ${db_name} -e "SELECT oauth_t.token FROM oauth_token oauth_t INNER JOIN oauth_consumer oauth_c ON oauth_c.entity_id = oauth_t.consumer_id WHERE oauth_c.name = \"graphql\" AND oauth_t.type = \"access\" LIMIT 1;")
oauth_secret=$(mysql -sN -u root -p${MYSQL_PW} -h ${db_hostname} ${db_name} -e "SELECT oauth_t.secret FROM oauth_token oauth_t INNER JOIN oauth_consumer oauth_c ON oauth_c.entity_id = oauth_t.consumer_id WHERE oauth_c.name = \"graphql\" AND oauth_t.type = \"access\" LIMIT 1;")

if [[ $(mysql -sN -u root -p${MYSQL_PW} -h ${db_hostname} ${db_name} -e "SELECT count(*) FROM oauth_consumer WHERE name=\"graphql\";") -eq 0 ]]; then
      echo "Error: no graphql oauth tokens exist in $ENV"
      exit 1
fi

sed -i -e "s/DEFAULT_oauth_consumer_key/${oauth_consumer_key}/g" MissguidedServiceEnvironment.postman_environment.json
sed -i -e "s/DEFAULT_oauth_consumer_secret/${oauth_consumer_secret}/g" MissguidedServiceEnvironment.postman_environment.json
sed -i -e "s/DEFAULT_oauth_access_token/$oauth_token/g" MissguidedServiceEnvironment.postman_environment.json
sed -i -e "s/DEFAULT_oauth_secret_token/$oauth_secret/g" MissguidedServiceEnvironment.postman_environment.json
