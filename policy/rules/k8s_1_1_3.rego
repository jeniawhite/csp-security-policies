package policy.rules.k8s_1_1_3

import data.policy.audit.file.kube_controller_manager_yaml_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := kube_controller_manager_yaml_ensure_permissions_644.finding
}
