package policy.rules.eks_3_1_1

import data.policy.audit.file.kubeconfig_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := kubeconfig_ensure_permissions_644.finding
}
