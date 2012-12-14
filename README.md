Barebones elasticsearch puppet module that uses hiera & parameterized classes.  
Written for 2.7.x keeping in mind the hiera autolookup feature in 3.x. 

Sample `data.yaml` - 
    
    ---
    elasticsearch::config::cluster_name:  mycluster
    elasticsearch::config::index_number_of_shards: 1
    elasticsearch::config::index_number_of_replicas: 0

As required, add additional params for elasticsearch::config class, update your yaml data and elasticsearch config template. 

TODO - add logging.yml, and startup settings 
