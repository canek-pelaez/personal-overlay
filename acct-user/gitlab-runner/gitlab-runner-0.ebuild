# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

inherit acct-user

DESCRIPTION="Dedicated user for gitlab-runner"

ACCT_USER_ID=125
ACCT_USER_GROUPS=( gitlab-runner )

ACCT_USER_HOME=/var/lib/gitlab-runner
ACCT_USER_HOME_OWNER=gitlab-runner:gitlab-runner
ACCT_USER_HOME_PERMS=0770

acct-user_add_deps
