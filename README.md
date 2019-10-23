
# FILES
site.yml:
  Entry-point to the code.
  Master Playbook.
  Its only function is to call playbooks (not to execute tasks directly).
  This is meant to facilitate dev/test and readability.  
*.yml:
  Ansible Playbooks.
  These may:
  - 1: Contain all tasks required for a function
  - 2: Invoke a local role (in ./roles/) to perform a function
  - 3: Invoke an external (ideally, very generic) role to perform a function
  Generally, Ansible code evolves from 1->2->3, from expedient to re-usable.
./roles/:
  Local Ansible Roles  
config.yaml:
  Used by 'runner' project to automatically create ./build/
  This makes reasoning about (and communicating) dependencies easier, precise,
  and automated.
overrides.yaml:
  Optional overrides to config.yaml
./build/:
  Provisions and Configures (local and/or cloud) dependencies used to
  develop this code.
  See <TODO:ADD URL> for details.
