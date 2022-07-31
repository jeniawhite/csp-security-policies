package main

import data.policy
import data.policy.lib.common

# input is a resource
# data is policy/configuration
# output is findings

resource = input.resource

findings = f {
	f := {finding |
		rule_id := input.runtime_config.rules[_]
		finding = {
			"result": policy.rules[rule_id].result,
			"rule": data.rules_metadata[rule_id],
		}
	}
}

metadata = common.metadata
