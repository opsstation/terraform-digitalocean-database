variable "name" {
  type        = string
  default     = ""
  description = " The name of the database cluster."
}

#variable "cluster_maintenance" {
#  type        = map(string)
#  default     = null
#  description = "The day and the start hour of the maintenance window policy"
#}

variable "cluster_engine" {
  type        = string
  default     = ""
  description = "Database engine used by the cluster (ex. pg for PostreSQL, mysql for MySQL, redis for Redis, or mongodb for MongoDB)"
}

variable "cluster_version" {
  type        = string
  default     = ""
  description = "The version of the cluster"
}

variable "cluster_private_network_uuid" {
  type        = string
  default     = null
  description = "The ID of the VPC where the database cluster will be located"
}

variable "mysql_sql_mode" {
  type        = string
  default     = null
  description = "A comma separated string specifying the SQL modes for a MySQL cluster."
}

variable "label_order" {
  type        = list(string)
  default     = ["name", "environment"]
  description = "Label order, e.g. `name`,`application`."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the resources creation."
}

variable "cluster_size" {
  type        = string
  default     = ""
  description = "Database Droplet size associated with the cluster (ex. db-s-1vcpu-1gb)"
}

variable "region" {
  type        = string
  default     = ""
  description = "DigitalOcean region where the cluster will reside."
}

variable "cluster_node_count" {
  type        = number
  default     = 1
  description = "Number of nodes that will be included in the cluster."
}

variable "redis_eviction_policy" {
  type        = string
  default     = null
  description = "A string specifying the eviction policy for a Redis cluster. Valid values are: noeviction, allkeys_lru, allkeys_random, volatile_lru, volatile_random, or volatile_ttl"
}

variable "databases" {
  type        = list(string)
  default     = []
  description = "A list of databases in the cluster"
}

variable "users" {
  type        = list(map(string))
  default     = null
  description = "A list of users in the cluster"
}

variable "create_pools" {
  type        = bool
  default     = false
  description = "Controls if pools should be created"
}

variable "pools" {
  type        = list(map(string))
  default     = null
  description = "A list of connection pools in the cluster"
}

variable "create_firewall" {
  type        = bool
  default     = false
  description = "Controls if firewall should be created"
}

variable "replica_enable" {
  type        = bool
  default     = false
  description = "Flag to control the resources creation."
}

variable "firewall_rules" {
  type        = list(map(string))
  default     = []
  description = "List of firewall rules associated with the cluster"
}
