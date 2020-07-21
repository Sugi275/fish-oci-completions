function __fish_oci_get_commands
  echo announce\t'Annsouncements Service CLI'
  echo audit\t'Audit Service CLI'
  echo autoscaling\t'Autoscaling CLI'
  echo budgets\t'Budgets CLI'
  echo bv\t'Block Volume Service CLI'
  echo ce\t'Container Engine for Kubernetes CLI'
  echo compute\t'Compute Service CLI'
  echo compute-management\t'Compute Management Service CLI'
  echo db\t'Database Service CLI'
  echo dns\t'DNS Service CLI'
  echo email\t'Email Delivery Service CLI'
  echo fs\t'File Storage Service CLI'
  echo health-checks\t'Health Checks Service CLI'
  echo iam\t'Identity and Access Management Service CLI'
  echo kms\t'Key Management Service CLI'
  echo lb\t'Load Balancing Service CLI'
  echo monitoring\t'Monitoring Service CLI'
  echo network\t'Networking Service Service CLI'
  echo ons\t'Notification Service CLI'
  echo os\t'Object Storage Service CLI'
  echo resource-manager\t'Resource Manager Service CLI'
  echo search\t'Search for resources in your cloud network'
  echo session\t'Session commands for CLI'
  echo setup\t'Setup commands for CLI'
  echo streaming\t'Streaming Service CLI'
  echo waas\t'WAF Service CLI'
  echo work-requests\t'Work Requests CLI'
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

# analytics
complete -c oci -f -n '__fish_using_command oci analytics' -a 'analytics-instance work-request work-request-error work-request-log'
complete -c oci -f -n '__fish_seen_subcommand_from analytics;and __fish_using_command oci analytics analytics-instance' -a 'change-compartment change-network-endpoint create delete get list scale start stop update'
complete -c oci -f -n '__fish_seen_subcommand_from analytics;and __fish_using_command oci analytics work-request' -a 'delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from analytics;and __fish_using_command oci analytics work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from analytics;and __fish_using_command oci analytics work-request-log' -a 'list'

# announce
complete -c oci -f -n '__fish_using_command oci announce' -a 'announcements user-status'
complete -c oci -f -n '__fish_seen_subcommand_from announce;and __fish_using_command oci announce announcements' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from announce;and __fish_using_command oci announce user-status' -a 'get update'

# api-gateway
complete -c oci -f -n '__fish_using_command oci api-gateway' -a 'deployment gateway work-request work-request-error work-request-log'
complete -c oci -f -n '__fish_seen_subcommand_from api-gateway;and __fish_using_command oci api-gateway deployment' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from api-gateway;and __fish_using_command oci api-gateway gateway' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from api-gateway;and __fish_using_command oci api-gateway work-request' -a 'cancel get list'
complete -c oci -f -n '__fish_seen_subcommand_from api-gateway;and __fish_using_command oci api-gateway work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from api-gateway;and __fish_using_command oci api-gateway work-request-log' -a 'list'

# application-migration
complete -c oci -f -n '__fish_using_command oci application-migration' -a 'migration source source-application work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from application-migration;and __fish_using_command oci application-migration migration' -a 'change-compartment create delete get list migrate-application update'
complete -c oci -f -n '__fish_seen_subcommand_from application-migration;and __fish_using_command oci application-migration source' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from application-migration;and __fish_using_command oci application-migration source-application' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from application-migration;and __fish_using_command oci application-migration work-request' -a 'cancel get list'
complete -c oci -f -n '__fish_seen_subcommand_from application-migration;and __fish_using_command oci application-migration work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from application-migration;and __fish_using_command oci application-migration work-request-log-entry' -a 'list-work-request-logs'

# audit
complete -c oci -f -n '__fish_using_command oci audit' -a 'config event'
complete -c oci -f -n '__fish_seen_subcommand_from audit;and __fish_using_command oci audit config' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from audit;and __fish_using_command oci audit event' -a 'list'

# autoscaling
complete -c oci -f -n '__fish_using_command oci autoscaling' -a 'configuration policy'
complete -c oci -f -n '__fish_seen_subcommand_from autoscaling;and __fish_using_command oci autoscaling configuration' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from autoscaling;and __fish_using_command oci autoscaling policy' -a 'create delete get update'

# bds
complete -c oci -f -n '__fish_using_command oci bds' -a 'block-storage cloudsql instance work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from bds;and __fish_using_command oci bds block-storage' -a 'add'
complete -c oci -f -n '__fish_seen_subcommand_from bds;and __fish_using_command oci bds cloudsql' -a 'add remove'
complete -c oci -f -n '__fish_seen_subcommand_from bds;and __fish_using_command oci bds instance' -a 'change-compartment create delete get list remove update worker-nodes'
complete -c oci -f -n '__fish_seen_subcommand_from bds;and __fish_using_command oci bds work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from bds;and __fish_using_command oci bds work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from bds;and __fish_using_command oci bds work-request-log-entry' -a 'list'

# blockchain
complete -c oci -f -n '__fish_using_command oci blockchain' -a 'blockchain-platform osn peer work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from blockchain;and __fish_using_command oci blockchain blockchain-platform' -a 'change-compartment create create-osn create-peer delete delete-osn delete-peer get list preview-scale scale start stop update update-osn update-peer'
complete -c oci -f -n '__fish_seen_subcommand_from blockchain;and __fish_using_command oci blockchain osn' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from blockchain;and __fish_using_command oci blockchain peer' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from blockchain;and __fish_using_command oci blockchain work-request' -a 'delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from blockchain;and __fish_using_command oci blockchain work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from blockchain;and __fish_using_command oci blockchain work-request-log-entry' -a 'list'

# budgets
complete -c oci -f -n '__fish_using_command oci budgets' -a 'alert-rule budget'
complete -c oci -f -n '__fish_seen_subcommand_from budgets;and __fish_using_command oci budgets alert-rule' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from budgets;and __fish_using_command oci budgets budget' -a 'create delete get list update'

# bv
complete -c oci -f -n '__fish_using_command oci bv' -a 'backup boot-volume boot-volume-backup boot-volume-kms-key volume volume-backup-policy volume-backup-policy-assignment volume-group volume-group-backup volume-kms-key'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv backup' -a 'change-compartment copy create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv boot-volume' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv boot-volume-backup' -a 'change-compartment copy create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv boot-volume-kms-key' -a 'delete get update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-backup-policy' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-backup-policy-assignment' -a 'create delete get get-volume-backup-policy-asset-assignment'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-group' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-group-backup' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from bv;and __fish_using_command oci bv volume-kms-key' -a 'delete get update'

# ce
complete -c oci -f -n '__fish_using_command oci ce' -a 'cluster cluster-options node-pool node-pool-options work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce cluster' -a 'create create-kubeconfig delete generate-token get list update'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce cluster-options' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce node-pool' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce node-pool-options' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce work-request' -a 'delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from ce;and __fish_using_command oci ce work-request-log-entry' -a 'list'

# compute
complete -c oci -f -n '__fish_using_command oci compute' -a 'boot-volume-attachment console-history dedicated-vm-host dedicated-vm-host-instance device image image-shape-compatibility-entry instance instance-console-connection pic shape vnic-attachment volume-attachment'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute boot-volume-attachment' -a 'attach detach get list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute console-history' -a 'capture delete get get-content list update'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute dedicated-vm-host' -a 'change-compartment create delete get host-shape instance-shape list update'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute dedicated-vm-host-instance' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute device' -a 'list-instance'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute image' -a 'change-compartment create delete export get import list update'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute image-shape-compatibility-entry' -a 'add get list remove'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute instance' -a 'action attach-vnic change-compartment detach-vnic get get-windows-initial-creds launch list list-vnics terminate update'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute instance-console-connection' -a 'create delete get get-plink-connection-string list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute pic' -a 'agreements listing subscription version'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute pic agreements' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute pic listing' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute pic subscription' -a 'create delete list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute pic version' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute vnic-attachment' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from compute;and __fish_using_command oci compute volume-attachment' -a 'attach attach-iscsi-volume attach-paravirtualized-volume detach get list'

# compute-management
complete -c oci -f -n '__fish_using_command oci compute-management' -a 'cluster-network instance-configuration instance-pool'
complete -c oci -f -n '__fish_seen_subcommand_from compute-management;and __fish_using_command oci compute-management cluster-network' -a 'change-compartment create get list list-instances terminate update'
complete -c oci -f -n '__fish_seen_subcommand_from compute-management;and __fish_using_command oci compute-management instance-configuration' -a 'change-compartment create create-from-instance delete get launch-compute-instance list update'
complete -c oci -f -n '__fish_seen_subcommand_from compute-management;and __fish_using_command oci compute-management instance-pool' -a 'attach-lb change-compartment create detach-lb get lb-attachment list list-instances reset softreset start stop terminate update'

# data-catalog
complete -c oci -f -n '__fish_using_command oci data-catalog' -a 'attribute attribute-tag catalog catalog-private-endpoint connection data-asset data-asset-tag entity entity-tag folder folder-tag glossary job job-definition job-execution job-log job-metric search tag term term-relationship type work-request work-request-error work-request-log'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog attribute' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog attribute-tag' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog catalog' -a 'attach change-compartment create delete detach get list object-stats update users'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog catalog-private-endpoint' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog connection' -a 'create delete get list test update upload-credentials'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog data-asset' -a 'create delete get import-connection list parse-connection update validate-connection'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog data-asset-tag' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog entity' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog entity-tag' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog folder' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog folder-tag' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog glossary' -a 'create delete expand-tree-for export get import list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog job' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog job-definition' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog job-execution' -a 'create get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog job-log' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog job-metric' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog search' -a 'query'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog tag' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog term' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog term-relationship' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog type' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from data-catalog;and __fish_using_command oci data-catalog work-request-log' -a 'list'

# data-flow
complete -c oci -f -n '__fish_using_command oci data-flow' -a 'application run'
complete -c oci -f -n '__fish_seen_subcommand_from data-flow;and __fish_using_command oci data-flow application' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-flow;and __fish_using_command oci data-flow run' -a 'change-compartment create delete get get-log list list-logs update'

# data-integration
complete -c oci -f -n '__fish_using_command oci data-integration' -a 'application connection connection-validation data-asset data-entity data-flow data-flow-validation folder project schema task task-run task-run-log task-validation work-request workspace'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration application' -a 'create create-patch delete delete-patch get get-dependent-object get-patch get-published-object list list-dependent-objects list-patches list-published-objects update'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration connection' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration connection-validation' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration data-asset' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration data-entity' -a 'create-entity-shape-from-file get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration data-flow' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration data-flow-validation' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration folder' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration project' -a 'create delete get get-count-statistic list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration schema' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration task' -a 'create-data-loader-task create-integration-task delete delete-task-validation get get-task-validation list list-task-validations update-data-loader-task update-integration-task'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration task-run' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration task-run-log' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration task-validation' -a 'create-from-data-loader-task create-from-integration-task'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration work-request' -a 'get list list-work-request-errors list-work-request-logs'
complete -c oci -f -n '__fish_seen_subcommand_from data-integration;and __fish_using_command oci data-integration workspace' -a 'change-compartment create delete get list start stop update'

# data-safe
complete -c oci -f -n '__fish_using_command oci data-safe' -a 'configuration private-endpoint service work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from data-safe;and __fish_using_command oci data-safe configuration' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from data-safe;and __fish_using_command oci data-safe private-endpoint' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-safe;and __fish_using_command oci data-safe service' -a 'enable'
complete -c oci -f -n '__fish_seen_subcommand_from data-safe;and __fish_using_command oci data-safe work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from data-safe;and __fish_using_command oci data-safe work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from data-safe;and __fish_using_command oci data-safe work-request-log-entry' -a 'list'

# data-science
complete -c oci -f -n '__fish_using_command oci data-science' -a 'model notebook-session notebook-session-shape project work-request'
complete -c oci -f -n '__fish_seen_subcommand_from data-science;and __fish_using_command oci data-science model' -a 'activate change-compartment create create-model-artifact create-model-provenance deactivate delete get get-artifact-content get-model-provenance head-model-artifact list update update-model-provenance'
complete -c oci -f -n '__fish_seen_subcommand_from data-science;and __fish_using_command oci data-science notebook-session' -a 'activate change-compartment create deactivate delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-science;and __fish_using_command oci data-science notebook-session-shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from data-science;and __fish_using_command oci data-science project' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from data-science;and __fish_using_command oci data-science work-request' -a 'cancel get list list-work-request-errors list-work-request-logs'

# db
complete -c oci -f -n '__fish_using_command oci db' -a 'autonomous-container-database autonomous-data-warehouse autonomous-data-warehouse-backup autonomous-database autonomous-database-backup autonomous-database-wallet autonomous-db-preview-version autonomous-db-version autonomous-exadata-infrastructure autonomous-exadata-infrastructure-shape autonomous-vm-cluster backup backup-destination console-connection data-guard-association database db-home exadata-infrastructure external-backup-job gi-version maintenance-run node patch patch-history system system-shape version vm-cluster vm-cluster-network'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-container-database' -a 'change-compartment create get list restart terminate update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-data-warehouse' -a 'create delete generate-wallet get list restore start stop update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-data-warehouse-backup' -a 'create get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-database' -a 'change-compartment create create-from-backup-id create-from-backup-timestamp create-from-clone data-safe delete fail-over generate-wallet get list restart restore start stop switchover update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-database-backup' -a 'create get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-database-wallet' -a 'get-metadata get-regional-wallet-metadata rotate rotate-regional-wallet'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-db-preview-version' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-db-version' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-exadata-infrastructure' -a 'change-compartment get launch list terminate update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-exadata-infrastructure-shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db autonomous-vm-cluster' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db backup' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db backup-destination' -a 'change-compartment create-nfs-details create-recovery-appliance-details delete get update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db console-connection' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db data-guard-association' -a 'create failover get list reinstate switchover'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db data-guard-association create' -a 'from-existing-db-system with-new-db-system'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db database' -a 'create create-database-from-backup create-from-backup create-from-database delete get list patch restore update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db db-home' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db exadata-infrastructure' -a 'activate change-compartment create delete download-exadata-infrastructure-config-file generate-recommended-vm-cluster-network get get-compute-units list update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db external-backup-job' -a 'complete create get'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db gi-version' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db maintenance-run' -a 'get list update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db node' -a 'get list reset soft-reset start stop'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db patch' -a 'get get-db-home get-vm-cluster list list-db-home list-vm-cluster'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db patch get' -a 'by-database by-db-system'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db patch-history' -a 'get get-db-home get-vm-cluster list list-db-home list-vm-cluster'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db patch-history get' -a 'by-database by-db-system'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db system' -a 'change-compartment get get-exadata-iorm-config launch launch-from-backup list patch terminate update update-exadata-iorm-config'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db system-shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db version' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db vm-cluster' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from db;and __fish_using_command oci db vm-cluster-network' -a 'create delete download-vm-cluster-network-config-file get list update validate'

# dns
complete -c oci -f -n '__fish_using_command oci dns' -a 'record steering-policy steering-policy-attachment tsig-key zone'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns record' -a 'domain rrset zone'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns record domain' -a 'delete get patch update'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns record rrset' -a 'delete get patch update'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns record zone' -a 'get patch update'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns steering-policy' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns steering-policy-attachment' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns tsig-key' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from dns;and __fish_using_command oci dns zone' -a 'change-compartment create delete get list migrate-from-dynect update'

# dts
complete -c oci -f -n '__fish_using_command oci dts' -a 'appliance export job nfs-dataset physical-appliance'
complete -c oci -f -n '__fish_seen_subcommand_from dts;and __fish_using_command oci dts appliance' -a 'cancel delete get-passphrase list never-receive request request-entitlement setup-notifications show show-entitlement update-shipping-address'
complete -c oci -f -n '__fish_seen_subcommand_from dts;and __fish_using_command oci dts export' -a 'change-compartment configure-physical-appliance create create-policy delete generate-manifest get-passphrase list request-appliance setup-notifications show update'
complete -c oci -f -n '__fish_seen_subcommand_from dts;and __fish_using_command oci dts job' -a 'change-compartment close create delete detach-devices-details list setup-notifications show update verify-upload-user-credentials'
complete -c oci -f -n '__fish_seen_subcommand_from dts;and __fish_using_command oci dts nfs-dataset' -a 'activate create deactivate delete get-seal-manifest list reopen seal seal-status set-export show'
complete -c oci -f -n '__fish_seen_subcommand_from dts;and __fish_using_command oci dts physical-appliance' -a 'configure-encryption finalize initialize-authentication list show unlock unregister'

# email
complete -c oci -f -n '__fish_using_command oci email' -a 'sender suppression'
complete -c oci -f -n '__fish_seen_subcommand_from email;and __fish_using_command oci email sender' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from email;and __fish_using_command oci email suppression' -a 'create delete get list'

# events
complete -c oci -f -n '__fish_using_command oci events' -a 'rule'
complete -c oci -f -n '__fish_seen_subcommand_from events;and __fish_using_command oci events rule' -a 'change-compartment create delete get list update'

# fn
complete -c oci -f -n '__fish_using_command oci fn' -a 'application function'
complete -c oci -f -n '__fish_seen_subcommand_from fn;and __fish_using_command oci fn application' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fn;and __fish_using_command oci fn function' -a 'create delete get invoke list update'

# fs
complete -c oci -f -n '__fish_using_command oci fs' -a 'export export-set file-system mount-target snapshot'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs export' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs export-set' -a 'get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs file-system' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs mount-target' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from fs;and __fish_using_command oci fs snapshot' -a 'create delete get list update'

# health-checks
complete -c oci -f -n '__fish_using_command oci health-checks' -a 'http-monitor http-probe http-probe-result ping-monitor ping-probe ping-probe-result vantage-point'
complete -c oci -f -n '__fish_seen_subcommand_from health-checks;and __fish_using_command oci health-checks http-monitor' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from health-checks;and __fish_using_command oci health-checks http-probe' -a 'create-on-demand'
complete -c oci -f -n '__fish_seen_subcommand_from health-checks;and __fish_using_command oci health-checks http-probe-result' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from health-checks;and __fish_using_command oci health-checks ping-monitor' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from health-checks;and __fish_using_command oci health-checks ping-probe' -a 'create-on-demand'
complete -c oci -f -n '__fish_seen_subcommand_from health-checks;and __fish_using_command oci health-checks ping-probe-result' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from health-checks;and __fish_using_command oci health-checks vantage-point' -a 'list'

# iam
complete -c oci -f -n '__fish_using_command oci iam' -a 'auth-token authentication-policy availability-domain bulk-action-resource-type-collection compartment customer-secret-key dynamic-group fault-domain group identity-provider identity-provider-group mfa-totp-device network-sources policy region region-subscription scim-client-credentials smtp-credential tag tag-default tag-namespace tagging-work-request tagging-work-request-error tagging-work-request-log ui-password-information user work-request'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam auth-token' -a 'create delete list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam authentication-policy' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam availability-domain' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam bulk-action-resource-type-collection' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam compartment' -a 'bulk-delete-resources bulk-move-resources create delete get list move recover update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam customer-secret-key' -a 'create delete list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam dynamic-group' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam fault-domain' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam group' -a 'add-user create delete get list list-users remove-user update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam identity-provider' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam identity-provider-group' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam mfa-totp-device' -a 'activate create delete generate-totp-seed get list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam network-sources' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam policy' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam region' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam region-subscription' -a 'create list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam scim-client-credentials' -a 'reset-idp-scim-client'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam smtp-credential' -a 'create delete list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tag' -a 'bulk-delete create delete get list list-cost-tracking reactivate retire update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tag-default' -a 'assemble-effective-tag-set create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tag-namespace' -a 'cascade-delete change-compartment create delete get list reactivate retire update'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tagging-work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tagging-work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam tagging-work-request-log' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam ui-password-information' -a 'get-user'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam user' -a 'api-key create delete get list list-groups oauth2-credential swift-password ui-password update update-user-capabilities update-user-state'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam user api-key' -a 'delete list upload'
complete -c oci -f -n '__fish_seen_subcommand_from iam;and __fish_using_command oci iam work-request' -a 'get list'

# integration
complete -c oci -f -n '__fish_using_command oci integration' -a 'integration-instance work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from integration;and __fish_using_command oci integration integration-instance' -a 'change-compartment create delete get list start stop update'
complete -c oci -f -n '__fish_seen_subcommand_from integration;and __fish_using_command oci integration work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from integration;and __fish_using_command oci integration work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from integration;and __fish_using_command oci integration work-request-log-entry' -a 'list-work-request-logs'

# kms
complete -c oci -f -n '__fish_using_command oci kms' -a 'crypto management'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms crypto' -a 'decrypt encrypt generate-data-encryption-key'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms management' -a 'key key-version vault wrapping-key'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms management key' -a 'backup cancel-deletion change-compartment create disable enable get import list restore restore-from-file schedule-deletion update'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms management key-version' -a 'cancel-deletion create get import list schedule-deletion'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms management vault' -a 'backup cancel-deletion change-compartment create get list restore restore-from-file schedule-deletion update usage'
complete -c oci -f -n '__fish_seen_subcommand_from kms;and __fish_using_command oci kms management wrapping-key' -a 'get'

# lb
complete -c oci -f -n '__fish_using_command oci lb' -a 'backend backend-health backend-set backend-set-health certificate health-checker hostname listener listener-rule load-balancer load-balancer-health nsg path-route-set policy protocol rule-set shape work-request'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend-health' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend-set' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb backend-set-health' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb certificate' -a 'create delete list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb health-checker' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb hostname' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb listener' -a 'create delete update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb listener-rule' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb load-balancer' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb load-balancer-health' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb nsg' -a 'update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb path-route-set' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb policy' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb protocol' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb rule-set' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from lb;and __fish_using_command oci lb work-request' -a 'get list'

# limits
complete -c oci -f -n '__fish_using_command oci limits' -a 'definition quota resource-availability service value'
complete -c oci -f -n '__fish_seen_subcommand_from limits;and __fish_using_command oci limits definition' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from limits;and __fish_using_command oci limits quota' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from limits;and __fish_using_command oci limits resource-availability' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from limits;and __fish_using_command oci limits service' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from limits;and __fish_using_command oci limits value' -a 'list'

# marketplace
complete -c oci -f -n '__fish_using_command oci marketplace' -a 'accepted-agreement agreement category listing package publisher report-collection report-type-collection'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace accepted-agreement' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace agreement' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace category' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace listing' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace package' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace publisher' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace report-collection' -a 'list-reports'
complete -c oci -f -n '__fish_seen_subcommand_from marketplace;and __fish_using_command oci marketplace report-type-collection' -a 'list-report-types'

# monitoring
complete -c oci -f -n '__fish_using_command oci monitoring' -a 'alarm alarm-history-collection alarm-status metric metric-data suppression'
complete -c oci -f -n '__fish_seen_subcommand_from monitoring;and __fish_using_command oci monitoring alarm' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from monitoring;and __fish_using_command oci monitoring alarm-history-collection' -a 'get-alarm-history'
complete -c oci -f -n '__fish_seen_subcommand_from monitoring;and __fish_using_command oci monitoring alarm-status' -a 'list-alarms-status'
complete -c oci -f -n '__fish_seen_subcommand_from monitoring;and __fish_using_command oci monitoring metric' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from monitoring;and __fish_using_command oci monitoring metric-data' -a 'post summarize-metrics-data'
complete -c oci -f -n '__fish_seen_subcommand_from monitoring;and __fish_using_command oci monitoring suppression' -a 'remove'

# mysql
complete -c oci -f -n '__fish_using_command oci mysql' -a 'backup configuration db-system shape version work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql backup' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql configuration' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql db-system' -a 'clone create delete get import list restart start stop update'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql version' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from mysql;and __fish_using_command oci mysql work-request-log-entry' -a 'list'

# network
complete -c oci -f -n '__fish_using_command oci network' -a 'cpe cpe-device-shape cpe-device-shape-detail cross-connect cross-connect-group cross-connect-location cross-connect-port-speed-shape cross-connect-status dhcp-options drg drg-attachment drg-redundancy-status fast-connect-provider-service fast-connect-provider-service-key internet-gateway ip-sec-connection ip-sec-psk ip-sec-tunnel ipv6 local-peering-gateway nat-gateway nsg private-ip public-ip remote-peering-connection route-table security-list service service-gateway subnet tunnel-cpe-device-config vcn virtual-circuit virtual-circuit-public-prefix vlan vnic'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cpe' -a 'change-compartment create delete get get-cpe-device-config-content list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cpe-device-shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cpe-device-shape-detail' -a 'get-cpe-device-shape'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-group' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-location' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-port-speed-shape' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network cross-connect-status' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network dhcp-options' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network drg' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network drg-attachment' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network drg-redundancy-status' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network fast-connect-provider-service' -a 'get list virtual-circuit-bandwidth-shape'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network fast-connect-provider-service-key' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network internet-gateway' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network ip-sec-connection' -a 'change-compartment create delete get get-config get-ipsec-cpe-device-config-content get-status list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network ip-sec-psk' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network ip-sec-tunnel' -a 'get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network ipv6' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network local-peering-gateway' -a 'change-compartment connect create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network nat-gateway' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network nsg' -a 'change-compartment create delete get list rules update vnics'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network private-ip' -a 'delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network public-ip' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network remote-peering-connection' -a 'change-compartment connect create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network route-table' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network security-list' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network service' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network service-gateway' -a 'attach change-compartment create delete detach get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network subnet' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network tunnel-cpe-device-config' -a 'get get-tunnel-cpe-device-config-content update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network vcn' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network virtual-circuit' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network virtual-circuit-public-prefix' -a 'bulk-add bulk-delete list'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network vlan' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from network;and __fish_using_command oci network vnic' -a 'assign-private-ip get unassign-private-ip update'

# nosql
complete -c oci -f -n '__fish_using_command oci nosql' -a 'index query row table work-request work-request-error work-request-log'
complete -c oci -f -n '__fish_seen_subcommand_from nosql;and __fish_using_command oci nosql index' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from nosql;and __fish_using_command oci nosql query' -a 'execute prepare'
complete -c oci -f -n '__fish_seen_subcommand_from nosql;and __fish_using_command oci nosql row' -a 'delete get update'
complete -c oci -f -n '__fish_seen_subcommand_from nosql;and __fish_using_command oci nosql table' -a 'change-compartment create delete get list list-table-usage update'
complete -c oci -f -n '__fish_seen_subcommand_from nosql;and __fish_using_command oci nosql work-request' -a 'delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from nosql;and __fish_using_command oci nosql work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from nosql;and __fish_using_command oci nosql work-request-log' -a 'list'

# oce
complete -c oci -f -n '__fish_using_command oci oce' -a 'oce-instance work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from oce;and __fish_using_command oci oce oce-instance' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from oce;and __fish_using_command oci oce work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from oce;and __fish_using_command oci oce work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from oce;and __fish_using_command oci oce work-request-log-entry' -a 'list'

# ocvs
complete -c oci -f -n '__fish_using_command oci ocvs' -a 'esxi-host sddc work-request work-request-error work-request-log'
complete -c oci -f -n '__fish_seen_subcommand_from ocvs;and __fish_using_command oci ocvs esxi-host' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from ocvs;and __fish_using_command oci ocvs sddc' -a 'change-compartment create delete get list update vmware-versions'
complete -c oci -f -n '__fish_seen_subcommand_from ocvs;and __fish_using_command oci ocvs work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from ocvs;and __fish_using_command oci ocvs work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from ocvs;and __fish_using_command oci ocvs work-request-log' -a 'list'

# oda
complete -c oci -f -n '__fish_using_command oci oda' -a 'instance work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from oda;and __fish_using_command oci oda instance' -a 'change-compartment create delete get list start stop update'
complete -c oci -f -n '__fish_seen_subcommand_from oda;and __fish_using_command oci oda work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from oda;and __fish_using_command oci oda work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from oda;and __fish_using_command oci oda work-request-log-entry' -a 'list'

# ons
complete -c oci -f -n '__fish_using_command oci ons' -a 'message subscription topic'
complete -c oci -f -n '__fish_seen_subcommand_from ons;and __fish_using_command oci ons message' -a 'publish'
complete -c oci -f -n '__fish_seen_subcommand_from ons;and __fish_using_command oci ons subscription' -a 'change-compartment confirm create delete get list resend-confirmation unsubscribe update'
complete -c oci -f -n '__fish_seen_subcommand_from ons;and __fish_using_command oci ons topic' -a 'change-compartment create delete get list update'

# os
complete -c oci -f -n '__fish_using_command oci os' -a 'bucket multipart ns object object-lifecycle-policy preauth-request replication retention-rule work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os bucket' -a 'create delete get list reencrypt update'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os multipart' -a 'abort list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os ns' -a 'get get-metadata update-metadata'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os object' -a 'bulk-delete bulk-delete-versions bulk-download bulk-upload copy delete get head list list-object-versions put reencrypt rename restore restore-status resume-put'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os object-lifecycle-policy' -a 'delete get put'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os preauth-request' -a 'create delete get list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os replication' -a 'create-replication-policy delete-replication-policy get-replication-policy list-replication-policies list-replication-sources make-bucket-writable'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os retention-rule' -a 'create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os work-request' -a 'cancel get list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from os;and __fish_using_command oci os work-request-log-entry' -a 'list'

# os-management
complete -c oci -f -n '__fish_using_command oci os-management' -a 'erratum managed-instance managed-instance-group scheduled-job software-source windows-update work-request'
complete -c oci -f -n '__fish_seen_subcommand_from os-management;and __fish_using_command oci os-management erratum' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from os-management;and __fish_using_command oci os-management managed-instance' -a 'attach-child attach-parent detach-child detach-parent get install-all-updates install-all-windows-updates install-package install-update install-windows-update list list-available-packages list-available-software-sources list-available-updates list-available-windows-updates list-installed-packages list-installed-windows-updates remove-package'
complete -c oci -f -n '__fish_seen_subcommand_from os-management;and __fish_using_command oci os-management managed-instance-group' -a 'attach change-compartment create delete detach get list update'
complete -c oci -f -n '__fish_seen_subcommand_from os-management;and __fish_using_command oci os-management scheduled-job' -a 'change-compartment create delete get list list-upcoming run-now skip-next-execution update'
complete -c oci -f -n '__fish_seen_subcommand_from os-management;and __fish_using_command oci os-management software-source' -a 'add-packages change-compartment create delete get get-package list list-packages remove-packages search-packages update'
complete -c oci -f -n '__fish_seen_subcommand_from os-management;and __fish_using_command oci os-management windows-update' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from os-management;and __fish_using_command oci os-management work-request' -a 'get list list-errors list-logs'

# raw-request
complete -c oci -f -n '__fish_using_command oci raw-request' -a ''

# resource-manager
complete -c oci -f -n '__fish_using_command oci resource-manager' -a 'configuration-source-provider job stack work-request'
complete -c oci -f -n '__fish_seen_subcommand_from resource-manager;and __fish_using_command oci resource-manager configuration-source-provider' -a 'change-compartment create create-gitlab-access-token-provider delete get list update update-gitlab-access-token-provider'
complete -c oci -f -n '__fish_seen_subcommand_from resource-manager;and __fish_using_command oci resource-manager job' -a 'cancel create create-apply-job create-destroy-job create-import-tf-state-job create-plan-job get get-job-logs get-job-logs-content get-job-tf-config get-job-tf-state list update'
complete -c oci -f -n '__fish_seen_subcommand_from resource-manager;and __fish_using_command oci resource-manager stack' -a 'change-compartment create create-from-git-provider delete detect-drift get get-stack-tf-config get-stack-tf-state list list-resource-drift-details list-terraform-versions update update-from-git-provider'
complete -c oci -f -n '__fish_seen_subcommand_from resource-manager;and __fish_using_command oci resource-manager work-request' -a 'get list list-work-request-errors list-work-request-logs'

# search
complete -c oci -f -n '__fish_using_command oci search' -a 'resource resource-type'
complete -c oci -f -n '__fish_seen_subcommand_from search;and __fish_using_command oci search resource' -a 'free-text-search structured-search'
complete -c oci -f -n '__fish_seen_subcommand_from search;and __fish_using_command oci search resource-type' -a 'get list'

# secrets
complete -c oci -f -n '__fish_using_command oci secrets' -a 'secret-bundle secret-bundle-version'
complete -c oci -f -n '__fish_seen_subcommand_from secrets;and __fish_using_command oci secrets secret-bundle' -a 'get'
complete -c oci -f -n '__fish_seen_subcommand_from secrets;and __fish_using_command oci secrets secret-bundle-version' -a 'list-versions'

# session
complete -c oci -f -n '__fish_using_command oci session' -a 'authenticate export import refresh terminate validate'

# setup
complete -c oci -f -n '__fish_using_command oci setup' -a 'autocomplete bootstrap config keys oci-cli-rc repair-file-permissions'

# streaming
complete -c oci -f -n '__fish_using_command oci streaming' -a 'admin stream'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming admin' -a 'connect-harness stream stream-pool'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming admin connect-harness' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming admin stream' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming admin stream-pool' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming stream' -a 'cursor group message'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming stream cursor' -a 'create-cursor create-group-cursor'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming stream group' -a 'commit get heartbeat update'
complete -c oci -f -n '__fish_seen_subcommand_from streaming;and __fish_using_command oci streaming stream message' -a 'get put'

# support
complete -c oci -f -n '__fish_using_command oci support' -a 'incident incident-resource-type validation-response'
complete -c oci -f -n '__fish_seen_subcommand_from support;and __fish_using_command oci support incident' -a 'create get list update'
complete -c oci -f -n '__fish_seen_subcommand_from support;and __fish_using_command oci support incident-resource-type' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from support;and __fish_using_command oci support validation-response' -a 'validate-user'

# usage-api
complete -c oci -f -n '__fish_using_command oci usage-api' -a 'configuration usage-summary'
complete -c oci -f -n '__fish_seen_subcommand_from usage-api;and __fish_using_command oci usage-api configuration' -a 'request-summarized'
complete -c oci -f -n '__fish_seen_subcommand_from usage-api;and __fish_using_command oci usage-api usage-summary' -a 'request-summarized-usages'

# vault
complete -c oci -f -n '__fish_using_command oci vault' -a 'secret secret-version'
complete -c oci -f -n '__fish_seen_subcommand_from vault;and __fish_using_command oci vault secret' -a 'cancel-secret-deletion change-compartment create-base64 get list schedule-secret-deletion update update-base64'
complete -c oci -f -n '__fish_seen_subcommand_from vault;and __fish_using_command oci vault secret-version' -a 'cancel-deletion get list schedule-deletion'

# waas
complete -c oci -f -n '__fish_using_command oci waas' -a 'access-rule address-list address-rate-limiting caching-rule captcha certificate custom-protection-rule device-fingerprint-challenge edge-subnet good-bot http-redirect human-interaction-challenge js-challenge policy-config protection-rule protection-settings purge-cache recommendation threat-feed waas-policy waf-blocked-request waf-config waf-log waf-request waf-traffic-datum whitelist work-request'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas access-rule' -a 'list update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas address-list' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas address-rate-limiting' -a 'get-waf update-waf'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas caching-rule' -a 'list update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas captcha' -a 'list update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas certificate' -a 'change-compartment create delete get list update update-address-list'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas custom-protection-rule' -a 'change-compartment create delete get list update update-setting'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas device-fingerprint-challenge' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas edge-subnet' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas good-bot' -a 'list update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas http-redirect' -a 'change-compartment create delete get list update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas human-interaction-challenge' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas js-challenge' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas policy-config' -a 'get update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas protection-rule' -a 'get list update'
complete -c oci -f -n '__fish_seen_subcommand_from waas;and __fish_using_command oci waas protection-settings' -a 'get update'

# work-requests
complete -c oci -f -n '__fish_using_command oci work-requests' -a 'work-request work-request-error work-request-log-entry'
complete -c oci -f -n '__fish_seen_subcommand_from work-requests;and __fish_using_command oci work-requests work-request' -a 'get list'
complete -c oci -f -n '__fish_seen_subcommand_from work-requests;and __fish_using_command oci work-requests work-request-error' -a 'list'
complete -c oci -f -n '__fish_seen_subcommand_from work-requests;and __fish_using_command oci work-requests work-request-log-entry' -a 'list'

