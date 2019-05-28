<?php

namespace Drupal\bits_pages\Controller;

use Drupal\Core\Controller\ControllerBase;

/**
 * Class BitsCalculatorController.
 */
class BitsCalculatorController extends ControllerBase {

  /**
   * Calculator.
   *
   * @return string
   *   Return Hello string.
   */
  public function calculator($operador, $x, $y) {
    switch($operador){
      case "suma":
      $resultado = $x + $y;
      break;
      case 'resta':
      $resultado = $x - $y;
      break;
      case 'multiplicacion':
      $resultado = $x * $y;
      break;
      case 'division':
      $resultado = $x / $y;
      break;
      case 'residuo':
      $resultado = $x % $y;
      break;
    }
    return [
      '#type' => 'markup',
      '#markup' => $this->t('El resultado de la operación (') . $operador .$this->t(') entre '). $x . $this->t(' y ') . $y . ' es ' . $resultado
    ];
  }

}
