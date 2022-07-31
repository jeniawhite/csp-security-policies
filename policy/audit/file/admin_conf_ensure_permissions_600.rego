package policy.audit.file.admin_conf_ensure_permissions_600

import data.policy.audit.file.data_adapter
import data.policy.lib.common

finding = result {
	data_adapter.name == "admin.conf"
	rule_evaluation := common.file_permission_match(data_adapter.mode, 6, 0, 0)

	# set result
	result := {
		"evaluation": common.calculate_result(rule_evaluation),
		"expected": {"filemode": 600},
		"evidence": {"filemode": data_adapter.mode},
	}
}
