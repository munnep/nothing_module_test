# nothing_module_test

This repo has a vagrant box to easily use for testing the example described in this repository [https://github.com/kikitux/nothing-module/tree/master/example](https://github.com/kikitux/nothing-module/tree/master/example)

You can then test the nothing-module repo with kitchen-terraform as described in the earlier mentioned repository

Vagrant virtual machine:
- ubuntu virtual machine starts
- terraform installed
- ruby and bundle get installed
- repository ```github.com/kikitux/nothing-module``` gets cloned


# Prerequisites

Vagrant [See documentation](https://www.vagrantup.com/docs/installation)  
Virtualbox [See documentation](https://www.virtualbox.org/wiki/Downloads)

# Use the nothing_module_test

- Clone the repository to your local machine
```
git clone https://github.com/munnep/nothing_module_test.git
```

- Change your directory
```
cd nothing_module_test
```

- Start a virtual machine with Vagrant
```
vagrant up
```

- ssh into the virtual machine with Vagrant.
```
vagrant ssh
```

- go to the directory ```$HOME/nothing-module/example```
```
cd $HOME/nothing-module/example
```

- Run the kitchen-terraform test
``` 
bundle exec kitchen test
```

You should see a succesfull test
```
...
...
...
  Command: `terraform state list`
     ✔  stdout is expected to eq "module.nothing.null_resource.nothing\n"
     ✔  stderr is expected to eq ""
     ✔  exit_status is expected to eq 0

Test Summary: 3 successful, 0 failures, 0 skipped
       Finished verifying <default-terraform> (0m0.24s).
...
...
...       
```

- exit out of the vagrant machine
```
exit
```

- destroy the vagrant machine
```
vagrant destroy
```