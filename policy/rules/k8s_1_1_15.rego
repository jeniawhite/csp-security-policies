package policy.rules.k8s_1_1_15

import data.policy.audit.file.scheduler_conf_ensure_permissions_644
import data.policy.lib.common

result = r {
	r := scheduler_conf_ensure_permissions_644.finding
}
