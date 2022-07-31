package policy.audit.file.data_adapter

import future.keywords.in

is_filesystem {
	input.type == "file"
}

name = file_name {
	is_filesystem
	file_name := input.resource.name
}

mode = file_mode {
	is_filesystem
	file_mode := input.resource.mode
}

file_path = path {
	is_filesystem
	path := input.resource.path
}

owner_user = owner {
	is_filesystem
	owner := input.resource.owner
}

owner_group = group {
	is_filesystem
	group := input.resource.group
}
