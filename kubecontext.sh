context="$(kubectl config view --minify -o jsonpath='{..current-context}')"
namespace="$(kubectl config view --minify -o jsonpath='{..namespace}')"
if [[ -n "$context" ]]; then
    echo "  $context:$namespace"
else
    echo ''
fi
