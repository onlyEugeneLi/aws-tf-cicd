# Provision EC2 Instance with Terraform via CD pipepline (Jenkins)

> Remember to use feature to test all these new features 

Local Jenkins

Remote Jenkins client

Reminder:
1. Before destroy, migrate state back to local by commenting out `backend s3` and running `terraform init -migrate-state`. Then you can destroy resources.

# Logs

2025-08-10
1. EC2 instance and security group are forced to be destroyed after every "terraform apply"

    Possible solution: move security configuration from vpc module to web module

    [Reference](https://discuss.hashicorp.com/t/second-time-apply-without-any-change-in-code-or-manual-console-change-causing-force-replacement/20396/6#:~:text=I%20think%20you%20can%20avoid%20the%20problem%20by%20changing%20security_groups%20%3D%20%20to%20vpc_security_groups%20%3D%20%20in%20your%20aws_instance%20resource%20configuration%2C%20which%20should%20then%20cause%20the%20configuration%20to%20still%20match%20after%20the%20data%20has%20been%20normalized%20by%20the%20remote%20API%20and%20AWS%20provider)
1. Automate the S3 resource provision and backend state bucket provision with Python script
1. Install Jenkins server
    - How to use Docker to simplify Jenkins dependency provision

# Further
1. [Infrastructure Provision via GitHub Actions](https://www.youtube.com/watch?v=scecLqTeP3k) 
1. Public subnet and prviate subnet -- Set Jenkins server into private subnet for higher security

