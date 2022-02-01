package bundle

import "github.com/elastic/csp-security-policies/compliance"

func CISKubernetes() (map[string]string, error) {
	filePrefixes := []string{
		"main.rego",
		"lib/",
		"cis_k8s/",
		"kubernetes_common/",
	}

	return createPolicyMap(compliance.Embed, filePrefixes)
}