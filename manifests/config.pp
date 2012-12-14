class elasticsearch::config (
  $cluster_name             = hiera('elasticsearch::config::cluster_name'),
  $index_number_of_shards   = hiera('elasticsearch::config::index_number_of_shards'),
  $index_number_of_replicas = hiera('elasticsearch::config::index_number_of_replicas'),
  ) {

  file { '/etc/elasticsearch/elasticsearch.yml':
    content => template('elasticsearch/elasticsearch.yml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

}
