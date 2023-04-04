# 3 Tier EKS with Bastion Host & IRSA ready

Ensure the AWS user has enough permissions; for example, a user with `AdministratorAccess` should be enough.

---

A key will be stored in `eks-key` file. You can use it to do SSH to the bastion host and the worker nodes.

---
This setup uses S3 Backend for Remote State Storage so:

We use `terraform-on-aws-eks-test` bucket.

Create `eks` table and use `LockID` in the `Partition key` field; the type is a string.

> Make sure the region is the same for the bucket and the table.
