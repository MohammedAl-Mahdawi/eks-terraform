# AWS EKS Vertical Pod Autoscaler

> The metrics server should be created first.
> 1. Key Requirement-1: Install OpenSSL in a local terminal whose version is 1.1.1 or higher.
> 2. Key Requirement-2: Configure kubeconfig for kubectl in your local terminal.

---

This setup uses S3 Backend for Remote State Storage, so:

We use `terraform-on-aws-eks-test` bucket.

Create an `eks-vpa` table and use `LockID` in the `Partition key` field; the type is a string.

> Make sure the region is the same for the bucket and the table.
