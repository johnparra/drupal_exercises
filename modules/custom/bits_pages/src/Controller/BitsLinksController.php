<?php

namespace Drupal\bits_pages\Controller;

use Drupal\Core\Controller\ControllerBase;

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
    return [
      '#type' => 'markup',
      '#markup' => $this->t('Implement method: links')
    ];
  }

}
