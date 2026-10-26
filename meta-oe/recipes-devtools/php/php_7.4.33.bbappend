FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI_append = " \
    file://CVE-2024-5458.patch \
"

# not-applicable-platform: Issue only applies on Windows (BatBadBut command injection via cmd.exe)
CVE_CHECK_WHITELIST += "CVE-2024-3566"
