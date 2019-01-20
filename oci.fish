function __fish_oci_get_commands
  echo audit\t'Audit Service CLI'
  echo bv\t'Block Volume Service CLI'
  echo ce\t'Container Engine for Kubernetes CLI'
  echo compute\t'Compute Service CLI'
  echo compute-management\t'Compute Management Service CLI'
  echo db\t'Database Service CLI'
  echo dns\t'DNS Service CLI'
  echo email\t'Email Delivery Service CLI'
  echo fs\t'File Storage Service CLI'
  echo iam\t'Identity and Access Management Service CLI'
  echo kms\t'Key Management Service CLI'
  echo lb\t'Load Balancing Service CLI'
  echo network\t'Networking Service Service CLI'
  echo os\t'Object Storage Service CLI'
  echo search\t'Search for resources in your cloud network'
  echo setup\t'Setup commands for CLI'
end

function __fish_using_command
    set cmd (commandline -opc)
    if [ (count $cmd) -eq (count $argv) ]
        for i in (seq (count $argv))
            if [ $cmd[$i] != $argv[$i] ]
                return 1
            end
        end
        return 0
    end
    return 1
end

# main command
complete -c oci -f -n '__fish_using_command oci' -a '(__fish_oci_get_commands)'

# audit
complete -c oci -f -n '__fish_using_command oci audit' -a 'config event'
complete -c oci -f -n '__fish_seen_subcommand_from audit;and __fish_using_command oci audit config' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from audit;and __fish_using_command oci audit event' -a 'list'

# bv
complete -c oci -f -n '__fish_using_command oci bv' -a 'backup boot-volume boot-volume-backup boot-volume-kms-key volume volume-backup-policy volume-backup-policy-assignment volume-group volume-group-backup volume-kms-key'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv backup' -a 'copy create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv boot-volume' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv boot-volume-backup' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv boot-volume-kms-key' -a 'delete get update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-backup-policy' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-backup-policy-assignment' -a 'create delete
get get-volume-backup-policy-asset-assignment'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-group' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-group-backup' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-kms-key' -a 'delete get update'

# ce
complete -c oci -f -n '__fish_using_command oci ce' -a 'cluster cluster-options node-pool node-pool-options work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce cluster' -a 'create create-kubeconfig delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce cluster-options' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce node-pool' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce node-pool-options' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce work-request' -a 'delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce work-request-log-entry' -a 'list'

# compute
complete -c oci -f -n '__fish_using_command oci compute' -a 'boot-volume-attachment console-history device image instance instance-console-connection pic shape vnic-attachment volume-attachment'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute boot-volume-attachment' -a 'attach detach get list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute console-history' -a 'capture delete get get-content list update'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute device' -a 'list-instance'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute image' -a 'create delete export get import list update'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute instance' -a 'action attach-vnic detach-vnic get get-windows-initial-creds launch list list-vnics terminate update'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute instance-console-connection' -a 'create delete get get-plink-connection-string list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute pic' -a 'agreements listing subscription
version'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute vnic-attachment' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute volume-attachment' -a 'attach attach-paravirtualized-volume detach get list'

# compute-management
complete -c oci -f -n '__fish_using_command oci compute-management' -a 'instance-configuration instance-pool'
complete -c oci -f -n '__fish_seen_subcommand_from compute-management;and __fish_using_command oci compute-management instance-configuration' -a 'create delete get launch-compute-instance list update'
complete -c oci -f -n '__fish_seen_subcommand_from compute-management;and __fish_using_command oci compute-management instance-pool' -a 'create get list list-instances reset softreset start stop terminate update'

# db
complete -c oci -f -n '__fish_using_command oci db' -a 'autonomous-data-warehouse autonomous-data-warehouse-backup autonomous-database autonomous-database-backup backup data-guard-association database external-backup-job node patch patch-history system system-shape version'complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-data-warehouse' -a 'create delete generate-wallet get list restore start stop update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-data-warehouse-backup' -a 'create get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-database' -a 'create delete generate-wallet get list restore start stop update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-database-backup' -a 'create get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db backup' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db data-guard-association' -a 'create failover get list reinstate switchover'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db database' -a 'create create-from-backup delete get
list patch restore update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db external-backup-job' -a 'complete create get'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db node' -a 'get list reset soft-reset start stop'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db patch' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db patch-history' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db system' -a 'get launch launch-from-backup list patch terminate update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db system-shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db version' -a 'list'

# dns
complete -c oci -f -n '__fish_using_command oci dns' -a 'record zone'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns record' -a 'domain rrset zone'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns zone' -a 'create delete get list update'

# email
complete -c oci -f -n '__fish_using_command oci email' -a 'sender suppression'
complete -c oci -f -n '__fish_seen_subcommand_from email;and __fish_using_command oci email sender' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from email;and __fish_using_command oci email suppression' -a 'create delete get list'

# fs
complete -c oci -f -n '__fish_using_command oci fs' -a 'export export-set file-system mount-target snapshot'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs export' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs export-set' -a 'get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs file-system' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs mount-target' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs snapshot' -a 'create delete get list update'

# iam
complete -c oci -f -n '__fish_using_command oci iam' -a 'auth-token availability-domain compartment customer-secret-key dynamic-group fault-domain group identity-provider-group policy region region-subscription scim-client-credentials smtp-credential tag tag-namespace user
work-request'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam auth-token' -a 'create delete list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam availability-domain' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam compartment' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam customer-secret-key' -a 'create delete list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam dynamic-group' -a 'create delete get list update'complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam fault-domain' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam group' -a 'add-user create delete get list list-users remove-user update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam identity-provider-group' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam policy' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam region' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam region-subscription' -a 'create list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam scim-client-credentials' -a 'reset-idp-scim-client'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam smtp-credential' -a 'create delete list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tag' -a 'create get list list-cost-tracking reactivate retire update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tag-namespace' -a 'create get list reactivate retire update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam user' -a 'api-key create delete get list list-groups swift-password ui-password update update-user-capabilities update-user-state'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam work-request' -a 'get list'

# kms
complete -c oci -f -n '__fish_using_command oci kms' -a 'crypto management'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms crypto' -a 'decrypt encrypt generate-data-encryption-key'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms management' -a 'key key-version vault'

# lb
complete -c oci -f -n '__fish_using_command oci lb' -a 'backend backend-health backend-set backend-set-health certificate health-checker
hostname listener load-balancer load-balancer-health path-route-set policy protocol rule-set shape work-request'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend-health' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend-set' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend-set-health' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb certificate' -a 'create delete list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb health-checker' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb hostname' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb listener' -a 'create delete update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb load-balancer' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb load-balancer-health' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb path-route-set' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb policy' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb protocol' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb rule-set' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb work-request' -a 'get list'

# network
complete -c oci -f -n '__fish_using_command oci network' -a 'cpe cross-connect cross-connect-group cross-connect-location cross-connect-port-speed-shape cross-connect-status dhcp-options drg drg-attachment fast-connect-provider-service internet-gateway ip-sec-connection local-peering-gateway nat-gateway private-ip public-ip remote-peering-connection route-table security-list service service-gateway subnet vcn virtual-circuit virtual-circuit-public-prefix vnic'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cpe' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-group' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-location' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-port-speed-shape' -a 'list'complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-status' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network dhcp-options' -a 'create delete get list
update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network drg' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network drg-attachment' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network fast-connect-provider-service' -a 'get list virtual-circuit-bandwidth-shape'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network internet-gateway' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network ip-sec-connection' -a 'create delete get
get-config get-status list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network local-peering-gateway' -a 'connect create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network nat-gateway' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network private-ip' -a 'delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network public-ip' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network remote-peering-connection' -a 'connect create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network route-table' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network security-list' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network service' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network service-gateway' -a 'attach create delete detach get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network subnet' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network vcn' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network virtual-circuit' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network virtual-circuit-public-prefix' -a 'bulk-add bulk-delete list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network vnic' -a 'assign-private-ip get unassign-private-ip update'

# os
complete -c oci -f -n '__fish_using_command oci os' -a 'bucket multipart ns object object-lifecycle-policy preauth-request work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os bucket' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os multipart' -a 'abort list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os ns' -a 'get get-metadata update-metadata'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os object' -a 'bulk-delete bulk-download bulk-upload copy delete get head list put rename restore restore-status resume-put'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os object-lifecycle-policy' -a 'delete get put'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os preauth-request' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os work-request' -a 'cancel get list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os work-request-log-entry' -a 'list'

# search
complete -c oci -f -n '__fish_using_command oci search' -a 'resource resource-type'
complete -c oci -f -n '__fish_seen_subcommand_from search;and __fish_using_command oci search resource' -a 'free-text-search structured-search'
complete -c oci -f -n '__fish_seen_subcommand_from search;and __fish_using_command oci search resource-type' -a 'get list'

# setup
complete -c oci -f -n '__fish_using_command oci setup' -a 'autocomplete config keys oci-cli-rc repair-file-permissions'
