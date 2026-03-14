#!/bin/sh

SCRIPT_DIR=$(
	cd -- "$(dirname $0)" &&
		pwd
	) || exit 1

DST_DIR="${HOME}/.local/bin"
[ -d "${DST_DIR}" ] || { echo 'no .local/bin dir, install faield.' ; exit 1 ; }
cp ${SCRIPT_DIR}/bin/* "${DST_DIR}" || { echo 'cp failed.' ; exit 1 ; }

