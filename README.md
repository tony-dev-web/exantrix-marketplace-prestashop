# Exantrix marketplace pour PrestaShop 1.7 / 8

Vendez vos produits sur la marketplace française [Exantrix](https://exantrix.com) depuis votre boutique PrestaShop : catalogue et stock synchronisés, commandes Exantrix reçues dans le module et par email.

**Page et guide d'installation** : https://exantrix.com/extensions/prestashop
**Téléchargement** : https://cdn.exantrix.com/static/plugins/exantrix-prestashop.zip
**Espace vendeur (jeton API)** : https://exantrix.com/a2/vendeur

## Installation

1. Modules › Gestionnaire de modules › Installer un module (zip `exantrix.zip` contenant le dossier `exantrix/`).
2. Configurer : jeton API (espace vendeur Exantrix) et catégorie Exantrix.
3. Copier l'URL de notification (`index.php?fc=module&module=exantrix&controller=commande`) dans votre espace vendeur.
4. « Envoyer tout le catalogue » : Exantrix valide vos nouveaux produits avant mise en ligne.

## Développement

Standard de code PrestaShop : `php-cs-fixer fix --config=.php-cs-fixer.dist.php` (config `prestashop/php-dev-tools`).

Licence MIT.
