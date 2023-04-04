# ExternalDNS Install Using Helm

This will add/remove(keep in sync) DNS records in Route 53.

```yaml
    # External DNS Example - For creating a Record Set in Route53 add the following to the annotations of the Ingress/LB Service.
    external-dns.alpha.kubernetes.io/hostname: dnstest1.example.com, dnstest2.example.com
```

Also, using the `host` in the ingress will add the records.


> The cluster should be created first.

---

This setup uses S3 Backend for Remote State Storage so:

We use `terraform-on-aws-eks-test` bucket.

Create `externaldns-storage` table and use `LockID` in the `Partition key` field, and the type is a string.

> Make sure the region is the same for the bucket and the table.
