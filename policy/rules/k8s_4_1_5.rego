package policy.rules.k8s_4_1_5

import data.policy.audit.file.kubelet_conf_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := kubelet_conf_ensure_permissions_644.finding
}
