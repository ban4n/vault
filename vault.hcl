storage "raft" {
  path = "/opt/vault/data"
  node_id = "node1"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  cluster_address = "0.0.0.0:8201"
  tls_disable = true
}
api_addr = "http://<node1>:8200"
cluster_addr = "http://<node1>:8201"
cluster_name = "vault-ha-cluster"
ui = true
log_level = "INFO"
disable_mlock = true
