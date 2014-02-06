<?php

/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
// use Zend\Db\Adapter\Adapter;
 use Application\Model\Inscritos;

class IndexController extends AbstractActionController {

    public $dbAdapter;

    public function indexAction() {
        return new ViewModel();
    }

    public function fbAction() {

        include_once 'vendor/facebook-php-sdk/facebook.php';

        $config = array(
            'appId' => '641330902600082',
            'secret' => 'ff77e9b1f09def1db2af33b41c69b23f',
            'status' => 'true',
            'fileUpload' => false, // optional
            'allowSignedRequest' => false, // optional, but should be set to false for non-canvas apps
        );

        $facebook = new \Facebook($config);

        $u = $facebook->getUser();
        $response = $facebook->api("/641330902600082");
        
        $view = new ViewModel();
        $view->fb = $facebook;
        $view->u = $u;
        $view->usuario = $response;
        
        return $view;
    }

    public function validarAction(){
        $dni = $this->getRequest()->getPost('dni');
        $this->dbAdapter = $this->getServiceLocator()->get('Zend\Db\Adapter');
        $o_inscrito = new Inscritos($this->dbAdapter);
        $res = $o_inscrito->verifica_registro($dni);
    }
    
    public function saveAction(){
        if($this->getRequest()->isPost()){
            $form = $this->getRequest()->getPost();
            $this->dbAdapter = $this->getServiceLocator()->get('Zend\Db\Adapter');
            $o_inscrito = new Inscritos($this->dbAdapter);
            $o_inscrito->save($form);
            
        }
        
    }

}
