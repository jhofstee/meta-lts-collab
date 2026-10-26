FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append = " \
    file://CVE-2024-5458.patch \
    file://CVE-2026-109618-CVE-2026-109619.patch \
    file://CVE-2026-109618-CVE-2026-109619-tests.patch \
"

# not-applicable-platform: Issue only applies on Windows (BatBadBut command injection via cmd.exe)
CVE_CHECK_WHITELIST += "CVE-2024-3566"
