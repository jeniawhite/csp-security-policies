package policy.interfaces.interface1.ensure_permissions

import data.parameters
import data.policy.lib.common
import data.policy.main_adapter.data_adapter

finding = result {
	data_adapter.name == parameters.entity
	mode := data_adapter.mode
	user := substring(parameters.mode, 0, 1)
	group := substring(parameters.mode, 1, 1)
	other := substring(parameters.mode, 2, 1)
	rule_evaluation := common.file_permission_match(mode, user, group, other)

	# set result
	result := {
		"evaluation": common.calculate_result(rule_evaluation),
		"expected": {"filemode": parameters.mode},
		"evidence": {"filemode": mode},
	}
}
