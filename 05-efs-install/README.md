# Install EFS Using Helm

> The cluster should be created first.

---

This setup uses S3 Backend for Remote State Storage so:

We use `terraform-on-aws-eks-test` bucket.

Create an `efs-csi` table and use `LockID` in the `Partition key` field; the type is a string.

> Make sure the region is the same for the bucket and the table.
