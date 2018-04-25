{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "CrossAccountPull",
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "${account_ids}"
                ]
            },
            "Action": [
                "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "ecr:BatchCheckLayerAvailability"
            ]
        }
    ]
}
