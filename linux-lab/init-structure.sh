#!/usr/bin/env bash

# create a directory + README.md with a title
make_topic() {
  dir="$1"
  title="$2"

  mkdir -p "$dir"
  readme="$dir/README.md"

  if [ ! -f "$readme" ]; then
    cat > "$readme" <<EOF
# $title

_TODO: Add notes and practice tasks for this topic._
EOF
  fi
}

# Beginner topics
make_topic "beginner/01-file-management" "01 – File Management"
make_topic "beginner/02-filesystem-permissions" "02 – Filesystem & Permissions"
make_topic "beginner/03-system-info" "03 – System Information"
make_topic "beginner/04-user-management" "04 – User Management"
make_topic "beginner/05-process-management" "05 – Process Management"
make_topic "beginner/06-file-archiving" "06 – File Archiving & Transfer"
make_topic "beginner/07-package-management" "07 – Package Management"

# Intermediate topics
make_topic "intermediate/01-networking" "01 – Networking"
make_topic "intermediate/02-service-management" "02 – Service Management"
make_topic "intermediate/03-hardware" "03 – Hardware Management"
make_topic "intermediate/04-backup-automation" "04 – Backup Automation"
make_topic "intermediate/05-text-processing" "05 – Text & File Processing"
make_topic "intermediate/06-terminal-multiplexing" "06 – Terminal Multiplexing"
make_topic "intermediate/07-security-basics" "07 – Security Basics"

# Advanced topics
make_topic "advanced/01-kernel-config" "01 – Kernel Configuration"
make_topic "advanced/02-system-performance" "02 – System Performance"
make_topic "advanced/03-automation-scripting" "03 – Automation Scripting"
make_topic "advanced/04-filesystem-internals" "04 – Filesystem Internals"
make_topic "advanced/05-virtualization" "05 – Virtualization & Containers"
make_topic "advanced/06-advanced-security" "06 – Advanced Security"
