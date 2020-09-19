#!/usr/bin/fish

cp -p ./oci_template.fish ./oci.fish

set root_strings (env COMP_WORDS="oci" COMP_CWORD=1 _OCI_COMPLETE=complete oci)
echo "# main command" | tee -a ./oci.fish
echo "complete -c oci -f -n '__fish_using_command oci' -a '$root_strings'" | tee -a ./oci.fish
echo "" | tee -a ./oci.fish

for subcommand1 in $root_strings
  echo "# $subcommand1" | tee -a ./oci.fish
  set sub1_completion (env COMP_WORDS="oci $subcommand1" COMP_CWORD=2 _OCI_COMPLETE=complete oci)
  echo "complete -c oci -f -n '__fish_using_command oci $subcommand1' -a '$sub1_completion'" | tee -a ./oci.fish

  for subcommand2 in $sub1_completion
    set sub2_completion (env COMP_WORDS="oci $subcommand1 $subcommand2" COMP_CWORD=3 _OCI_COMPLETE=complete oci)
    if test 0 -eq (count $sub2_completion)
      break
    end
    echo "complete -c oci -f -n '__fish_seen_subcommand_from $subcommand1;and __fish_using_command oci $subcommand1 $subcommand2' -a '$sub2_completion'" | tee -a ./oci.fish
    
    for subcommand3 in $sub2_completion
      set sub3_completion (env COMP_WORDS="oci $subcommand1 $subcommand2 $subcommand3" COMP_CWORD=4 _OCI_COMPLETE=complete oci)
      if test 0 -eq (count $sub3_completion)
        break
      end
      echo "complete -c oci -f -n '__fish_seen_subcommand_from $subcommand1;and __fish_using_command oci $subcommand1 $subcommand2 $subcommand3' -a '$sub3_completion'" | tee -a ./oci.fish
    end
  end
  echo "" | tee -a ./oci.fish
end
