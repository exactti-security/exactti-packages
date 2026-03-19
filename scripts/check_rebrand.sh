#!/bin/bash
# ================================================
# check_rebrand.sh - Exact-Ti Rebrand Checker v1.0
# ================================================
echo "Exact-Ti Rebrand Checker"
echo "Buscando referencias residuais ao Exact-Ti..."

FOUND=$(grep -rn 'wazuh\|Exact-Ti\|WAZUH' . \
  --include='*.ts' --include='*.tsx' --include='*.js' --include='*.json' \
  --include='*.yml' --include='*.yaml' --include='*.conf' --include='*.sh' --include='*.py' \
  --exclude-dir=node_modules --exclude-dir=.git \
  | grep -v -E '(copyright|Copyright|LICENSE|upstream|github.com/wazuh)' \
  | head -50)

if [ -z "$FOUND" ]; then
  echo "OK: Rebranding completo - sem referencias residuais!"
else
  COUNT=$(echo "$FOUND" | wc -l)
  echo "ATENCAO: $COUNT ocorrencias encontradas para revisao:"
  echo "$FOUND"
fi