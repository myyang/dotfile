ENV_FILE="$1"
# shellcheck disable=SC3057
CMD=${*:2}

set -o allexport
# shellcheck disable=1090
. "$ENV_FILE"
set +o allexport

$CMD
