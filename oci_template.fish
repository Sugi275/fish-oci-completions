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

