package policy.audit.file.kubelet_conf_ensure_permissions_644

import data.policy.audit.file.data_adapter
import data.policy.lib.common

finding = result {
	data_adapter.name == "kubelet.conf"
	rule_evaluation := common.file_permission_match(data_adapter.mode, 6, 4, 4)

	# set result
	result := {
		"evaluation": common.calculate_result(rule_evaluation),
		"expected": {"filemode": 644},
		"evidence": {"filemode": data_adapter.mode},
	}
}
