package policy.rules.k8s_4_1_1

import data.policy.audit.file.kubeadm_conf_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := kubeadm_conf_ensure_permissions_644.finding
}
