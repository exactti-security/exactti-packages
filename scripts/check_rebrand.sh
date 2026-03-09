#!/bin/bash
# check_rebrand.sh - Exact-Ti Rebrand Checker v1.0
echo "Buscando referencias ao Wazuh..."
FOUND=\$(grep -rn 'wazuh\\|Wazuh' . --include='*.ts' --include='*.js' --include='*.json' --include='*.yml' --include='*.sh' --exclude-dir=.git --exclude-dir=node_modules | grep -v copyright | head -30)
[ -z "\$FOUND" ] && echo "OK: Sem referencias residuais!" || echo "REVISAR: \$FOUND"