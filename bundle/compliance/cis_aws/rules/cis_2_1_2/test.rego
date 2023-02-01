package compliance.cis_aws.rules.cis_2_1_2

import data.cis_aws.test_data
import data.compliance.cis_aws.data_adapter
import data.lib.test

test_violation {
	eval_fail with input as test_data.generate_s3_bucket("Bucket", "", null, null)
	eval_fail with input as rule_input("Deny", "*", "s3:*", "true")
	eval_fail with input as rule_input("Deny", "*", "wrong", "false")
	eval_fail with input as rule_input("Deny", "wrong", "s3:*", "false")
	eval_fail with input as rule_input("Allow", "*", "s3:*", "false")
}

test_pass {
	eval_pass with input as rule_input("Deny", "*", "s3:*", "false")
}

test_not_evaluated {
	not_eval with input as test_data.not_evaluated_s3_bucket
}

rule_input(effect, principal, action, is_secure_transport) = test_data.generate_s3_bucket("Bucket", "", test_data.generate_s3_bucket_policy_statement(effect, principal, action, is_secure_transport), null)

eval_fail {
	test.assert_fail(finding) with data.benchmark_data_adapter as data_adapter
}

eval_pass {
	test.assert_pass(finding) with data.benchmark_data_adapter as data_adapter
}

not_eval {
	not finding with data.benchmark_data_adapter as data_adapter
}