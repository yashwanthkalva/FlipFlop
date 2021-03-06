module "network"{
	source = "./network"
	AWS_REGION = "${var.AWS_REGION}"
	REGION_SHORT_NAME = "${var.REGION_SHORT_NAME[format("%s",var.AWS_REGION)]}"
	ENVIRONMENT = "${var.ENVIRONMENT}"
	PRODUCT = "${var.PRODUCT}"
	VPC_CIDR = "${var.VPC_CIDR}"
  BASTION_AMI_ID = "${data.aws_ami.ami-centos7.image_id}"
  BASTION_COUNT = "${var.BASTION_COUNT[format("%s",var.ENVIRONMENT)]}"
  PUBLIC_SUBNET_COUNT = "${var.PUBLIC_SUBNET_COUNT}"
	PRIVATE_SUBNET_COUNT="${var.PRIVATE_SUBNET_COUNT}"
  EC2_INSTANCE_TYPE_BASTION = "${var.EC2_INSTANCE_TYPE_BASTION}"
  EC2_EBS_SIZE_BASTION = "${var.EC2_EBS_SIZE_BASTION}"
	TRUSTED_INCOMING_CIDR = ["${var.TRUSTED_INCOMING_CIDR}"]
	PROVISIONER_CONNECTION_SSH_USER = "${var.PROVISIONER_CONNECTION_SSH_USER}"
}
