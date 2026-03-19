#!/bin/bash
# rebrand.sh - Exact-Ti v1.0
set -e
echo "Exact-Ti Rebranding iniciado..."
find . -type f -not -path '*/.git/*' -not -path '*/node_modules/*' \( -name '*.ts' -o -name '*.tsx' -o -name '*.js' -o -name '*.json' -o -name '*.yml' -o -name '*.conf' -o -name '*.sh' -o -name '*.py' \) \
  -exec sed -i \
    -e 's/Exact-Ti Security Platform/Exact-Ti Security Platform/g' \
    -e 's/Exact-Ti/Exact-Ti/g' \
    -e 's/exactti-server/exactti-server/g' \
    -e 's/exactti-agent/exactti-agent/g' \
    -e 's/exactti-dashboard/exactti-dashboard/g' \
    -e 's/wazuh-alerts-\*/exact-ti-alerts-*/g' \
  {} \; 2>/dev/null || true
echo "Concluido! Execute check_rebrand.sh para verificar."