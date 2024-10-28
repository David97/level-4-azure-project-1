### static ###
variable "location" { default = "southeastasia" }
variable "subscription-id" { default = "7a89650a-6be1-4fc4-a3ba-2d17b5b1bdfc" }
variable "tenant-id" { default = "e7f09741-5aa9-42fd-8000-e0041540b51a" }

### alias ###
variable "alias-hub" { default = "hub" }

### resource-group ###
variable "rg-hub" { default = "Henry-rg-1" }

### vnet ###
variable "vnet-hub-name" { default = "Henry-vnet-1" }
variable "vnet-hub" { default = ["10.80.0.0/16"] }

### route-table ###
# HUB
variable "rt-hub-appgw" { default = "RT-HPH-IT-APPGW-P-SEA-01" }
variable "rt-hub-vpn" { default = "RT-HPH-IT-VPNG-P-SEA-01" }

### bastion ###
variable "pip-hub-bastion" { default = "PIP-HPH-IT-BAS-P-SEA-01" }
variable "bastion-hub-name" { default = "BST-HPH-IT-P-SEA-01" }

### vpngw ###
variable "vpn-hub-pip" { default = "PIP-HPH-IT-VPNG-P-SEA-01" }
variable "vpn-hub-name" { default = "VPNG-HPH-IT-P-SEA-01" }
variable "vpn-hub-sku" { default = "VpnGw1AZ" }
variable "lgw-hub-1" { default = "LGW-HPH-IT-T4-P-SEA-01" }
variable "lgw-hub-2" { default = "LGW-HPH-IT-T9-P-SEA-01" }
# To be optimized
variable "site-1-connection" { default = "VCN-HPH-IT-IPSEC-T4-P-01" }
variable "site-1-psk" { default = "bB8u6Tj60uJL2RKYR0OCyiGMdds9gaEUs9Q2d3bRTTVRKJ516CCc1LeSMChAI0rc" }
variable "on-premise-pip-1" { default = "57.72.49.117" }
variable "site-1-on-private-network-1" { default = "172.18.45.0/24" }
variable "site-1-on-private-network-2" { default = "172.18.49.0/24" }
variable "site-1-on-private-network-3" { default = "172.18.50.0/24" }
variable "site-1-on-private-network-4" { default = "172.18.51.0/24" }
variable "site-2-connection" { default = "VCN-HPH-IT-IPSEC-T9-P-01" }
variable "site-2-psk" { default = "bB8u6Tj60uJL2RKYR0OCyiGMdds9gaEUs9Q2d3bRTTVRKJ516CCc1LeSMChAI0rc" }
variable "on-premise-pip-2" { default = "118.140.159.146" }
variable "site-2-on-private-network-1" { default = "192.168.123.0/24" }
variable "site-2-on-private-network-2" { default = "192.168.140.0/24" }
variable "site-2-on-private-network-3" { default = "192.168.124.0/24" }
variable "vnet-comm-spoke" { default = "10.70.0.0/18" }
variable "aks-argocd-ip" { default = "10.81.0.179/32" }

### appgw ###
variable "appgw-hub-pip" { default = "PIP-HPH-IT-AGW-P-SEA-01" }
variable "appgw-hub-name" { default = "AGW-HPH-IT-P-SEA-01" }
variable "host-name" { default = "veronica.hphit.hutchisonports.com" }
variable "appgw-frontend-private-ip-name" { default = "FEIP-HPH-IT-HUB-P-SEA-01-PRIVATE" }
variable "appgw-frontend-public-ip-name" { default = "FEIP-HPH-IT-HUB-P-SEA-01-PUBLIC" }
variable "appgw-frontend-ip" { default = "10.80.0.4" }
variable "appgw-frontend-port-name" { default = "FEPORT-HPH-IT-HUB-P-SEA-01-PRIVATE" }
variable "appgw-listener-name" { default = "LSTN-HPH-IT-HUB-P-SEA-01-PRIVATE" }
variable "appgw-rule" { default = "RQRT-HPH-IT-HUB-P-SEA-01-PRIVATE" }
variable "appgw-backend-pool" { default = "BEP-HPH-IT-HUB-P-SEA-01-PRIVATE" }
variable "appgw-backend-settings" { default = "BES-HPH-IT-HUB-P-SEA-01-PRIVATE" }
variable "appgw-cert-name" { default = "veronica-prod" }
#variable "appgw-cert-name" { default = "ca-veronicaprod.hpit.hutchisonports.com" }
variable "appgw-aks-ingress-ip" { default = "10.81.0.180" }
variable "appgw-health-probe" { default = "HP-HPH-IT-HUB-P-SEA-01-PRIVATE" }

### azfw ###
variable "azfw-hub-pip" { default = "PIP-HPH-IT-AFW-P-SEA-01" }
variable "azfw-hub-name" { default = "AFW-HPH-IT-P-SEA-01" }

### azfw policy ###
# Address Space
variable "ip-common-service" { default = "10.70.0.0/16" }
variable "ip-nprd-hub-service" { default = "10.90.0.0/16" }
variable "ip-nprd-ver-service" { default = "10.91.0.0/16" }
variable "ip-address-new-01" { default = "10.100.0.0/16" }
variable "ip-address-new-02" { default = "10.101.0.0/16" }

# Veronica 
variable "ip-aks" { default = "10.81.0.0/18" }
variable "ip-kong-ingress" { default = "10.81.0.4" }   #To be modified
variable "ip-argocd-ingress" { default = "10.81.0.5" } #To be modified
variable "ip-apgw" { default = "10.80.0.0/24" }
variable "ip-avd" { default = "10.70.0.0/24" }
variable "ip-aks-vm" { default = "10.81.9.0/24" }
variable "ip-rodc" { default = "10.70.1.0/24" }
variable "ip-azure-dns" { default = "168.63.129.16" }
variable "azfw-policy" { default = "AFWP-HPH-IT-P-SEA-01" }
variable "aks-confluent-fqdn" { default = "*.southeastasia.azure.confluent.cloud" }
# variable "aks-elastic-fqdn" { default = "ecl-hph-it-ver-d-sea-01.apm.uksouth.azure.elastic-cloud.com" }
variable "aks-trace-apm-fqdn" { default = "ecl-hph-it-ver-d-sea-01.apm.southeastasia.azure.elastic-cloud.com" }
variable "aks-trace-es-fqdn" { default = "ecl-hph-it-ver-d-sea-01.es.southeastasia.azure.elastic-cloud.com" }
variable "aks-trace-kb-fqdn" { default = "ecl-hph-it-ver-d-sea-01.kb.southeastasia.azure.elastic-cloud.com" }
variable "aks-log-apm-fqdn" { default = "ecl-hph-it-ver-d-sea-02.apm.southeastasia.azure.elastic-cloud.com" }
variable "aks-log-es-fqdn" { default = "ecl-hph-it-ver-d-sea-02.es.southeastasia.azure.elastic-cloud.com" }
variable "aks-log-kb-fqdn" { default = "ecl-hph-it-ver-d-sea-02.kb.southeastasia.azure.elastic-cloud.com" }
variable "aks-mongo-fqdn-1" { default = "api-agents.mongodb.com" }
variable "aks-mongo-fqdn-2" { default = "api-backup.mongodb.com" }
variable "aks-mongo-fqdn-3" { default = "api-backup.us-east-1.mongodb.com" }
variable "aks-mongo-fqdn-4" { default = "queryable-backup.us-east-1.mongodb.com" }
variable "aks-mongo-fqdn-5" { default = "restore-backup.us-east-1.mongodb.com" }
variable "aks-mongo-fqdn-6" { default = "real-time-api-agents.mongodb.com" }
variable "aks-mongo-fqdn-7" { default = "*.mongodb.net" }
variable "aks-redis-fqdn" { default = "*.redis.cache.windows.net" }

# On-Prem T9 to Mgmt VM
variable "ip-aks-mgmt-vm" { default = "10.81.9.4" }
variable "ip-aks-argocd" { default = "10.81.0.179" }

# staging - AKS
variable "ip-aks-staging" { default = "10.81.16.0/21" }
variable "ip-kong-ingress-staging" { default = "10.81.16.179" }   #To be modified
variable "ip-argocd-ingress-staging" { default = "10.81.16.180" } #To be modified
variable "ip-aks-vm-staging" { default = "10.81.25.0/24" }

# Data Spoke 
variable "ip-Golden-gate" { default = "10.81.67.0/24" }
variable "ip-databricks-pri" { default = "10.81.65.0/24" }
variable "ip-databricks-pub" { default = "10.81.64.0/24" }
variable "ip-databricks-web-app" { default = "52.187.145.107/32" }
variable "ip-databricks-ext-infra" { default = "20.195.104.64/28" }
variable "ip-databricks-scc" { default = "*.tunnel.southeastasia.azuredatabricks.net" }
variable "ip-ngen-db" { default = "20.205.36.18/32" }

### tags ###
variable "tags" {
  default = {
    "Function Unit"  = "Corporate Centre"
    "Environment"    = "Prod"
    "Department"     = "IT"
    "Business Owner" = "henry.cheung@softwareone.com"
    "IT Owner"       = "henry.cheung@softwareone.com"
    "Product"        = "Corporate PRD HUB"
  }
}

### VM ###
variable "vm-spoke-username" { default = "hphadmin" }
variable "vm-spoke-ora-name" { default = "VM-HPH-IT-DBWVER-D-SEA-01" }
variable "vm-spoke-ora-size" { default = "Standard_E4as_v4" }
variable "vm-spoke-ora-nic" { default = "NIC-VM-HPH-IT-DBWVER-D-SEA-01" }
