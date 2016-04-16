###Usage
---
Command:
```
 vagrant provision
```
Runs any configured provisioners against the running Vagrant managed machine.

This command is a great way to quickly test any provisioners, and is especially useful for incremental development of shell scripts, Chef cookbooks, or Puppet modules. You can just make simple modifications to the provisioning scripts on your machine, run a vagrant provision, and check for the desired results. Rinse and repeat.
