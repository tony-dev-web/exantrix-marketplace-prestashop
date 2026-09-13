{*
 * Exantrix marketplace : configuration du module
 *
 * @author    Exantrix <coucou@exantrix.com>
 * @copyright 2025-2026 Exantrix
 * @license   https://opensource.org/licenses/MIT MIT License
 *}
<div class="panel">
  <h3>Exantrix marketplace</h3>
  <form method="post" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-lg-3">Jeton API Exantrix</label>
      <div class="col-lg-6">
        <input type="text" name="EXANTRIX_JETON" value="{$exantrix_jeton|escape:'html':'UTF-8'}">
        <p class="help-block">Genere dans votre espace vendeur : https://exantrix.com/a2/vendeur</p>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-lg-3">Categorie Exantrix</label>
      <div class="col-lg-6">
        <select name="EXANTRIX_CATEGORIE">
          {foreach from=$exantrix_categories key=code item=nom}
            <option value="{$code|escape:'html':'UTF-8'}"{if $exantrix_categorie == $code} selected{/if}>{$nom|escape:'html':'UTF-8'}</option>
          {/foreach}
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-lg-3">Notification des commandes</label>
      <div class="col-lg-6"><p class="help-block">Copiez cette URL dans votre espace vendeur Exantrix : <code>{$exantrix_webhook|escape:'html':'UTF-8'}</code></p></div>
    </div>
    <div class="panel-footer">
      <button type="submit" name="exantrix_enregistrer" class="btn btn-default"><i class="process-icon-save"></i> Enregistrer</button>
      <button type="submit" name="exantrix_synchroniser" class="btn btn-primary">Envoyer tout le catalogue a Exantrix</button>
    </div>
  </form>
  <p>Les produits actifs avec une reference sont envoyes ; les nouveaux sont valides par Exantrix avant mise en ligne. Ensuite chaque modification et chaque changement de stock sont envoyes automatiquement.</p>
</div>
<div class="panel">
  <h3>Dernieres commandes Exantrix</h3>
  <table class="table">
    <thead><tr><th>Commande</th><th>Client</th><th>Total</th><th>Date</th></tr></thead>
    <tbody>
      {foreach from=$exantrix_commandes item=c}
        <tr><td>#{$c.id|intval}</td><td>{$c.client|escape:'html':'UTF-8'}</td><td>{$c.total|escape:'html':'UTF-8'} EUR</td><td>{$c.date|escape:'html':'UTF-8'}</td></tr>
      {foreachelse}
        <tr><td colspan="4">Aucune commande pour le moment.</td></tr>
      {/foreach}
    </tbody>
  </table>
  <p>Le detail (lignes, adresse, personnalisation) vous est envoye par email et reste consultable dans votre espace vendeur Exantrix.</p>
</div>
