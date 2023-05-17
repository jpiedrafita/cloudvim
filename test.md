# managed-kubernetes-platform

## Diagram of the repo usage

.  
├── [accounts](#accounts)
│   ├── aws  
│   │   └── aws-kkp-mgmt  
│   │   └── aws-kkp-master  
│   │   └── aws-kkp-seed  
│   │   └── aws-kkp-uranus  
│   │   └── aws-kkp-backup  
│   ├── gcp  
│   └── other  
├── bin *helper scripts/executables*  
├── docs *documents*  
└── kubermatic *kkp files*  
    ├── apps  
    │   └── bases  
    │       └── cert-manager-issuer *certificate issuer*  
    │       │   └── resources  
    │       └── kubermatic-settings *certificate issuer*  
    │       │   └── resources  


.
├── README.md
├── accounts
│   └── aws
│       ├── aws-kkp-backup
│       │   ├── README.md
│       │   └── schema.png
│       ├── aws-kkp-master
│       │   └── README.md
│       ├── aws-kkp-mgmt
│       │   └── README.md
│       ├── aws-kkp-seed
│       │   └── README.md
│       └── aws-kkp-uranus
│           └── README.md
├── bin
│   ├── README.md
│   └── setup_terraform_backend.sh
├── docs
│   └── README.md
└── kubermatic
    ├── README.md
    ├── apps
    │   └── bases
    │       ├── cert-manager-issuers
    │       │   ├── kustomization.yaml
    │       │   └── resources
    │       │       └── letsencrypt-cluster-issuer.yaml
    │       └── kubermatic-settings
    │           ├── kustomization.yaml
    │           └── resources
    │               └── settings.yaml
    └── clusters
        ├── aws-seed
        │   ├── README.md
        │   ├── apps
        │   │   └── overlays
        │   │       └── cert-manager-issuers
        │   │           └── kustomization.yaml
        │   ├── kubeone
        │   │   ├── addons
        │   │   │   └── enabled
        │   │   │       ├── kubermatic-namespaces
        │   │   │       │   └── manifest.yaml
        │   │   │       └── kubermatic-storage-classes
        │   │   │           └── manifest.yaml
        │   │   ├── credentials.yaml
        │   │   ├── features
        │   │   │   └── static-audit-log
        │   │   │       ├── metadata.yaml
        │   │   │       ├── minimal.yaml
        │   │   │       └── recommended.yaml
        │   │   └── kubeone.yaml
        │   ├── kubermatic
        │   │   └── values.yaml
        │   ├── secrets
        │   │   ├── age.key
        │   │   ├── age.pub
        │   │   ├── deployer.key
        │   │   └── deployer.pub
        │   └── terraform
        │       ├── README.md
        │       ├── backend.tf
        │       ├── main.tf
        │       ├── outputs.tf
        │       ├── variables.tf
        │       └── versions.tf
        ├── gcp-seed
        │   ├── README.md
        │   ├── apps
        │   │   └── overlays
        │   │       └── cert-manager-issuers
        │   │           └── kustomization.yaml
        │   ├── kubeone
        │   │   ├── addons
        │   │   │   └── enabled
        │   │   │       ├── kubermatic-namespaces
        │   │   │       │   └── manifest.yaml
        │   │   │       └── kubermatic-storage-classes
        │   │   │           └── manifest.yaml
        │   │   ├── credentials.yaml
        │   │   ├── features
        │   │   │   └── static-audit-log
        │   │   │       ├── metadata.yaml
        │   │   │       ├── minimal.yaml
        │   │   │       └── recommended.yaml
        │   │   ├── kubeone.yaml
        │   │   └── oberon-g.tar.gz
        │   ├── kubermatic
        │   │   └── values.yaml
        │   ├── secrets
        │   │   ├── age.key
        │   │   ├── age.pub
        │   │   ├── deployer.key
        │   │   ├── deployer.pub
        │   │   ├── k1-cluster-provisioner-sa-key.json
        │   │   └── prj-shared-common-srv46-56d164535ebe.json
        │   └── terraform
        │       ├── README.md
        │       ├── backend.tf
        │       ├── bin
        │       │   └── gcp
        │       │       └── setup_terraform_backend.sh
        │       ├── main.tf
        │       ├── output.tf
        │       ├── outputs.json
        │       ├── variables.tf
        │       └── versions.tf
        ├── master
        │   ├── README.md
        │   ├── apps
        │   │   └── overlays
        │   │       ├── cert-manager-issuers
        │   │       │   └── kustomization.yaml
        │   │       └── kubermatic-settings
        │   │           ├── kustomization.yaml
        │   │           └── user-mla
        │   │               └── kustomization.yaml
        │   ├── kubeone
        │   │   ├── addons
        │   │   │   └── enabled
        │   │   │       ├── kubermatic-namespaces
        │   │   │       │   └── manifest.yaml
        │   │   │       └── kubermatic-storage-classes
        │   │   │           └── manifest.yaml
        │   │   ├── credentials.yaml
        │   │   ├── features
        │   │   │   └── static-audit-log
        │   │   │       ├── metadata.yaml
        │   │   │       ├── minimal.yaml
        │   │   │       └── recommended.yaml
        │   │   └── kubeone.yaml
        │   ├── kubermatic
        │   │   ├── config.yaml
        │   │   └── values.yaml
        │   ├── kubermatic-seed
        │   │   ├── aws
        │   │   │   ├── seed-secret.yaml
        │   │   │   └── seed.yaml
        │   │   └── gcp
        │   │       ├── seed-secret.yaml
        │   │       └── seed.yaml
        │   ├── secrets
        │   │   ├── age.pub
        │   │   ├── deployer.key
        │   │   └── deployer.pub
        │   └── terraform
        │       ├── README.md
        │       ├── backend.tf
        │       ├── main.tf
        │       ├── outputs.tf
        │       ├── variables.tf
        │       └── versions.tf
        ├── shared-components
        │   └── velero
        │       └── velero-schedule-overwrite.yaml
        └── user-cls-mla
            ├── README.md
            ├── values-aws.yaml
            └── values-gcp.yaml





* **<a id=accounts>Accounts:</a>** Account information.
* **<a id=bin>bin:</a>** Helper scripts/executables.

    