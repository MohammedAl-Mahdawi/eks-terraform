#!/usr/bin/env bash
#
# Just running this script should be enough to take the environment down.
#

set -euo pipefail

declare -a Folders=("09-cloudwatchagent-fluentbit" "../08-k8s-metrics-server" "../07-cluster-autoscaler-install" "../06-efs-fs-sc" "../05-efs-install" "../04-externaldns-install" "../03-lbc-install" "../02-ebs-csi-eks-add-on" "../01-eks-bh-irsa")

for val in ${Folders[@]}; do
 cd $val
 terraform destroy -auto-approve
done

