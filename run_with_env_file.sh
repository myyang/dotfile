ENV_FILE="$1"
# shellcheck disable=SC3057
CMD=${*:2}

set -o allexport
# shellcheck source=/dev/null
. "$ENV_FILE"
set +o allexport

echo "$CMD"

$CMD
