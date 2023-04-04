# AWS EKS Cluster Autoscaler

This does scale in and out.

> The cluster should be created first.
> This can't exceed the max number of nodes that we specified in the cluster creation.

---

This setup uses S3 Backend for Remote State Storage, so:

We use `terraform-on-aws-eks-test` bucket.

Create `eks-cluster-autoscaler` table and use `LockID` in the `Partition key` field, and the type is a string.

> Make sure the region is the same for the bucket and the table.
