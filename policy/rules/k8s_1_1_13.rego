package policy.rules.k8s_1_1_13

import data.policy.audit.file.admin_conf_ensure_permissions_600
import data.policy.lib.common

result = r {
	r := admin_conf_ensure_permissions_600.finding
}
