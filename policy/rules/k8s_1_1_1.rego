package policy.rules.k8s_1_1_1

import data.policy.audit.file.kube_apiserver_yaml_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := kube_apiserver_yaml_ensure_permissions_644.finding
}
