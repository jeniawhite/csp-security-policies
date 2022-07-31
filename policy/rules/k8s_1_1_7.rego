package policy.rules.k8s_1_1_7

import data.policy.audit.file.etcd_yaml_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := etcd_yaml_ensure_permissions_644.finding
}
