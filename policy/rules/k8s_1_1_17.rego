package policy.rules.k8s_1_1_17

import data.policy.audit.file.controller_manager_conf_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := controller_manager_conf_ensure_permissions_644.finding
}
