<?php

namespace Drupal\bits_pages\Controller;

use Drupal\Core\Controller\ControllerBase;
use Drupal\Core\Url;

/**
 * Class BitsLinksController.
 */
class BitsLinksController extends ControllerBase {

  /**
   * Links.
   *
   * @return string
   *   Return Hello string.
   */
  public function links() {
    $url = Url::fromRoute('block.admin_display');
    $block_admin_link = $this->l($this->t('Página de administración de bloques'), $url);

    $url_content = Url::fromRoute('system.admin_content');
    $content_admin_link = $this->l($this->t('Página de administración de contenido'), $url_content);

    $url_user = Url::fromRoute('entity.user.collection');
    $user_admin_link = $this->l($this->t('Página de administración de usuarios'), $url_user);

    $url_portada = Url::fromRoute('<front>');
    $portada_link = $this->l($this->t('Portada del sitio'), $url_portada);
    
    //$url_node_1 = Url::fromRoute('/node/1');
    //$node_1_link = $this->l($this->t('Nodo 1'),$url_node_1);
    
    //$url__edit_node_1 = Url::fromRoute();

    $url_google = Url::fromUri('http://www.google.com', ['attributes'=>['target'=>'_blank']]);
    $google_link = $this->l($this->t('Ir a google'), $url_google);
    
    $build = [
      '#type' => 'markup',
      '#markup' => '<br>'.$block_admin_link.'<br>'.$content_admin_link.'<br>'.$user_admin_link.'<br>'.$portada_link.'<br>'.$google_link.'<br>',//.$node_1_link.'<br>',
    ];

    return $build;
  }

}
