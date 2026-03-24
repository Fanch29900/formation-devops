# Secrets GitHub à configurer
#
# Dans GitHub → Settings → Environments → staging / production
# Ajouter les secrets suivants :
#
# SSH_PRIVATE_KEY   : clé privée SSH pour se connecter aux instances Scaleway
# INSTANCE_IP       : IP publique de l'instance (staging ou prod)
#
# Optionnel (si authentification au registry privé Scaleway) :
# SCW_REGISTRY_ENDPOINT  : rg.fr-par.scw.cloud
# SCW_REGISTRY_PASSWORD  : secret key Scaleway (IAM)
# SCW_REGISTRY_USERNAME  : nologin (valeur fixe pour Scaleway)
#
# Sécurité :
# - Ne jamais stocker ces valeurs dans le code ou dans un fichier .env versionné
# - Utiliser des clés SSH Ed25519 (plus courtes et plus sûres que RSA)
# - Restreindre les droits IAM Scaleway au strict minimum (principe moindre privilège)
# - Faire tourner les secrets régulièrement
