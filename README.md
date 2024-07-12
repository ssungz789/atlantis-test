# atlantis-test
ec2 : 2ea (dev and prod)

├── README.md
├── atlantis.yaml
├── environments
│   ├── dev
│   │   ├── dev_main.tf
│   │   └── variables.tf
│   ├── prod
│   │   ├── prod_main.tf
│   │   └── variables.tf
│   └── provider.tf
├── modules
│   └── all_module
│       ├── data.tf
│       ├── main.tf
│       └── variables.tf
├── script
│   └── install.sh
└── variables
    ├── dev.tfvars
    └── prod.tfvars

