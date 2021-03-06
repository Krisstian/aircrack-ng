#!/bin/sh

set -ef

"${abs_builddir}/../aircrack-ng${EXEEXT}" \
    ${AIRCRACK_NG_ARGS} \
    --oneshot \
    "${abs_srcdir}/wep_64_ptw.cap" \
    -l /dev/null | \
        grep "KEY FOUND" | grep "1F:1F:1F:1F:1F"

exit 0

