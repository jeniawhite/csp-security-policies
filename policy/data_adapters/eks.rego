package policy.data_adapters.eks

import future.keywords.in

is_eks {
	input.type == "eks"
}

name = eks_name {
	is_eks
	eks_name := input.resource.eks.struct.name
}

mode = eks_mode {
	is_eks
	eks_mode := input.resource.eks.struct.mode
}
