<?php
/**
 * Exantrix marketplace : configuration PHP CS Fixer (standard PrestaShop + en-tete de licence)
 *
 * @author    Exantrix <coucou@exantrix.com>
 * @copyright 2025-2026 Exantrix
 * @license   https://opensource.org/licenses/MIT MIT License
 */
$header = <<<'EOT'
Exantrix marketplace : vendez vos produits sur https://exantrix.com

@author    Exantrix <coucou@exantrix.com>
@copyright 2025-2026 Exantrix
@license   https://opensource.org/licenses/MIT MIT License
EOT;

$config = new class() extends PrestaShop\CodingStandards\CsFixer\Config {
    public $entete = '';

    public function getRules(): array
    {
        return array_merge(parent::getRules(), [
            'header_comment' => ['header' => $this->entete, 'comment_type' => 'PHPDoc', 'location' => 'after_open', 'separate' => 'bottom'],
        ]);
    }
};
$config->entete = $header;
$config->getFinder()->in(__DIR__)->exclude('vendor');

return $config;
