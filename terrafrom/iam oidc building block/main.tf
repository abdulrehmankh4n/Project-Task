data "tls_certificate" "tls" {
  url = var.oidc_issuer
}

resource "aws_iam_openid_connect_provider" "provider" {
  client_id_list  = var.client_id_list
  thumbprint_list = data.tls_certificate.tls.certificates[*].sha1_fingerprint
  url             = data.tls_certificate.tls.url
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(aws_iam_openid_connect_provider.provider.url, "https://", "")}:sub"
      values   = ["system:serviceaccount:kube-system:aws-node"]
    }

    principals {
      identifiers = [aws_iam_openid_connect_provider.provider.arn]
      type        = "Federated"
    }
  }
}

resource "aws_iam_role" "role" {
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  name               = var.role_name
}