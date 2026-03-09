# Exact-Ti Security Platform — Packages

> Scripts de empacotamento (.deb / .rpm) da Exact-Ti Security Platform.

## Sobre

Este repositório contém os scripts para geração dos pacotes de instalação da **Exact-Ti Security Platform**.

## Pacotes Gerados

| Pacote | Formato | Descrição |
|---|---|---|
| `exactti-server` | .deb / .rpm | Servidor central |
| `exactti-agent` | .deb / .rpm / .msi | Agente para endpoints |
| `exactti-dashboard` | .deb / .rpm | Interface web |
| `exactti-indexer` | .deb / .rpm | Motor de indexação |

## Build via GitHub Actions

Acesse **Actions → Geração de Pacotes** e informe:
- **version**: versão do pacote (ex: 4.10.0)
- **revision**: revisão (ex: 1)
- **package_type**: deb, rpm ou both

## Build Manual

```bash
cd debs
./generate_package.sh -n exactti-server -v 4.10.0 -r 1 -a amd64 -t deb
```

---
*Exact-Ti Cybersecurity — Uberlândia, Brasil*