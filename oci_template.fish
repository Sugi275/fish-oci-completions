function __fish_oci_get_commands
  echo analytics\t'analytics Service CLI'
  echo announce\t'Annsouncements Service CLI'
  echo api-gateway\t'api-gateway Service CLI'
  echo application-migration\t'application-migration Service CLI'
  echo audit\t'Audit Service CLI'
  echo autoscaling\t'Autoscaling CLI'
  echo bds\t'Big Data Service Service CLI'
  echo blockchain\t'Block-Chain Service CLI'
  echo budgets\t'Budgets CLI'
  echo bv\t'Block Volume Service CLI'
  echo ce\t'Container Engine for Kubernetes CLI'
  echo compute\t'Compute Service CLI'
  echo compute-management\t'Compute Management Service CLI'
  echo data-catalog\t'data-catalog Service CLI'
  echo data-flow\t'data-flow Service CLI'
  echo data-integration\t'data-integration Service CLI'
  echo data-safe\t'data-safe Service CLI'
  echo data-science\t'data-science Service CLI'
  echo db\t'Database Service CLI'
  echo dns\t'DNS Service CLI'
  echo dts\t'dts Service CLI'
  echo email\t'Email Delivery Service CLI'
  echo events\t'events Service CLI'
  echo fn\t'Functions Service CLI'
  echo fs\t'File Storage Service CLI'
  echo health-checks\t'Health Checks Service CLI'
  echo iam\t'Identity and Access Management Service CLI'
  echo integration\t'integration Service CLI'
  echo kms\t'Key Management Service CLI'
  echo lb\t'Load Balancing Service CLI'
  echo limits\t'limits Service CLI'
  echo marketplace\t'marketplace Service CLI'
  echo monitoring\t'Monitoring Service CLI'
  echo mysql\t'mysql Service CLI'
  echo network\t'Networking Service Service CLI'
  echo nosql\t'nosql Service CLI'
  echo oce\t'oce Service CLI'
  echo ocvs\t'ocvs Service CLI'
  echo oda\t'oda Service CLI'
  echo ons\t'Notification Service CLI'
  echo os\t'Object Storage Service CLI'
  echo os-management\t'os-management Service CLI'
  echo raw-request\t'raw-request Service CLI'
  echo resource-manager\t'Resource Manager Service CLI'
  echo search\t'Search for resources in your cloud network'
  echo secrets\t'secrets Service CLI'
  echo session\t'Session commands for CLI'
  echo setup\t'Setup commands for CLI'
  echo streaming\t'Streaming Service CLI'
  echo support\t'support Service CLI'
  echo usage-api\t'usage-api Service CLI'
  echo vault\t'vault Service CLI'
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

