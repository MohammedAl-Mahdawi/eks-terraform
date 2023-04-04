# LBC Install Using Helm

> The cluster should be created first.

---

This setup uses S3 Backend for Remote State Storage so:

We use `terraform-on-aws-eks-test` bucket.

Create an `lbc-storage` table and use `LockID` in the `Partition key` field; the type is a string.

> Make sure the region is the same for the bucket and the table.

> Documentation available at: https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.4/
