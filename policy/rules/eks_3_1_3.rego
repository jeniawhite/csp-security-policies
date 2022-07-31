package policy.rules.eks_3_1_3

import data.policy.audit.file.kubelet_config_json_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := kubelet_config_json_ensure_permissions_644.finding
}
