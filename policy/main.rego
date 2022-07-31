package main

import data.policy
import data.policy.data_adapters
import data.policy.lib.common

# input is a resource
# data is policy/configuration
# output is findings

resource = input.resource

findings = f {
	f := {finding |
		rule_id := input.runtime_config.rules[_]
		result := policy.interfaces[_][data.rules_mapping[rule_id].audit_id].finding with data.parameters as data.rules_mapping[rule_id].parameters
		finding = {
			"result": result,
			"rule": data.rules_metadata[rule_id],
		}
	}
}

metadata = common.metadata
