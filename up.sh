#!/usr/bin/env bash
#
# Just running this script should be enough to get the environment set up.
#

set -euo pipefail

declare -a Folders=("01-eks-bh-irsa" "../02-ebs-csi-eks-add-on" "../03-lbc-install" "../04-externaldns-install" "../05-efs-install" "../06-efs-fs-sc" "../07-cluster-autoscaler-install" "../08-k8s-metrics-server" "../09-cloudwatchagent-fluentbit")

for val in ${Folders[@]}; do
 cd $val
 terraform init
 terraform validate
 terraform apply -auto-approve
done
