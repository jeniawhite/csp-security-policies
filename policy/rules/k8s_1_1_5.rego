package policy.rules.k8s_1_1_5

import data.policy.audit.file.kube_scheduler_yaml_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := kube_scheduler_yaml_ensure_permissions_644.finding
}
