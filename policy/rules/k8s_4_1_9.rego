package policy.rules.k8s_4_1_9

import data.policy.audit.file.config_yaml_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := config_yaml_ensure_permissions_644.finding
}
