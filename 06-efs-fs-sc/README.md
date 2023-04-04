# Create EFS File System & K8s Storage Class

We have to pre-create the EFS file system.

> The EFS CSI should be installed first.

---

This setup uses S3 Backend for Remote State Storage so:

We use `terraform-on-aws-eks-test` bucket.

Create `efs-fs-sc` table and use `LockID` in the `Partition key` field; the type is a string.

> Make sure the region is the same for the bucket and the table.
