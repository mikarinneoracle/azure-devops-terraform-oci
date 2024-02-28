
## Running Terraform from Azure DevOps with OCI runner (Azure DevOps agent)

Terraform files are store in git repo on Azure side and passed over to agent within the pipeline execution.

<p>
Terraform files are run as <b><i>instance-principal</i></b> on OCI and hence terraform execution is authorized using OCI policies. <a href="https://github.com/mikarinneoracle/azure-devops-terraform-oci/blob/main/terraform/versions.tf#L15">Config in Terraform</a>.
    
<p>
No OCI credentials are stored on Azure side. Only the PAT is need for the OCI runner (Azure DevOps agent) to connect to Azure Dev and start listening for pipeline jobs.

<p>
Terraform state is stored on OCI Object Storage private Bucket using a preauth. <a href="https://github.com/mikarinneoracle/azure-devops-terraform-oci/blob/main/terraform/versions.tf#L9">Config in Terraform</a>.
<br>
<a href="https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformUsingObjectStore.htm">Documenation</a> 

<p>
The following resources are created within the example terraform files:
<ul>
    <li>VCN</li>
    <li>Compute VM with ssh access</li>
    <li>Database (ATP)</li>
</ul>

<p>    
<img src="azure-oci-tf.png" width="800" />

Running thru pipeline:
<p>    
<img src="tf-result.png" width="800" />
    