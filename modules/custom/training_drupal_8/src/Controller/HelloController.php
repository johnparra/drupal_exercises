<?php

namespace Drupal\training_drupal_8\Controller;

class HelloController {

    public function hello() {
        $build = array(
            '#type'=> 'markup',
            '#markup' => '<p>'.t('Hello from HelloController').'</p>'
        );
        return $build;
    }
}