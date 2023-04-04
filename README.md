# Production Grade EKS Using Terraform

This repository contains the code to set up a full-featured production-grade EKS cluster using Terraform.

The goal of this setup is to have a full-featured cluster with control over everything regarding inside of it. This includes but is not limited to the following:

* Three-tier architecture VPC(private, public, and DB subnets)
* EKS Cluster
* Bastion Host
* IRSA
* EBS
* EFS
* LBC
* External DNS
* Cluster Autoscaler
* Metrics Server
* Vertical Pod Autoscaler
* Horizontal Pod Autoscaler
* CloudWatch Agent
* Fluent Bit
And more...

> Read the readme inside each folder.

> In case of changing the region, it is better to search for the `region` in the code.

> There is no cert-manager, so we should either use AWS Certificate Manager and manually create the certificate or Terraform to create the certificates.

> The folder `08-5-vpa-install` is not included with the `up.sh/down.sh` scripts because it needs some prerequisites in your environment to exist first(see the README.md inside the folder).

> Use either Horizontal Pod Autoscaler(the cluster should be ready for HPA without you doing anything) or Vertical Pod Autoscaler(you have to install `08-5-vpa-install` to get it running) but not both, and if you go with HPA then don't touch `08-5-vpa-install`.

Run `./up.sh` to create the cluster and set up everything.
Run `./down.sh` to destroy the cluster and everything.
