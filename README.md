<h1>PROVISIONERS</h1>
<h2>         Provisioners are used to execute scripts on a local or remote machine as part of resource creation or destruction. Provisioners can be used to bootstrap a resource, cleanup before destroy, run configuration management, etc.</h2>
<h1>FILE PROVISIONER</h1>
<h2>         The "file" provisioner is used to copy files or directories from the local machine to a remote resource. This is often useful for transferring configuration files, scripts, or any other necessary files to the target machine during the provisioning process.</h2>
<h1>REMOTE PROVISIONER</h1>
<h2>         The remote-exec provisioner is used to execute commands on a remote resource, typically a virtual machine or instance.
This provisioner is commonly used for tasks like installing software, configuring services, or performing any action that requires access to the remote machine.</h2>
<h1>LOCAL PROVISIONER</h1>
<h2>          *The local-exec provisioner allows you to run commands(what you specify) on the machine where Terraform is executed.These commands are typically shell commands or scripts.</h2>
