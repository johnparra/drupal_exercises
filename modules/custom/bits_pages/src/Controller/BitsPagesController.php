<?php

namespace Drupal\bits_pages\Controller;

use Drupal\Core\Controller\ControllerBase;

/**
 * Class BitsPagesController.
 */
class BitsPagesController extends ControllerBase {

  /**
   * Simple.
   *
   * @return string
   *   Return Hello string.
   */
  public function simple() {
    return [
      '#type' => 'markup',
      '#markup' => $this->t('Página con mensaje simple.')
    ];
  }

}
