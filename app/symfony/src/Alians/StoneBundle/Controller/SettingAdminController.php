<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Setting;
 
class SettingAdminController extends Controller
{
    public function createAction($id=null)
    {
        $response = parent::createAction();
        return $response;
        
    }//end func
    
    public function editAction($id=null)
    {
        
        $response = parent::editAction();
        return $response;
       
    }//end func
    
    public function deleteAction($id=null)
    {
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        $response = parent::batchAction($id=null);
        return $response;
       
    }//end func
    
    public function showAction($id=null)
    {
        $response = parent::showAction($id);
        return $response;
       
    }//end func
    
    public function listAction()
    {
        
        $response = parent::listAction();
        return $response;
       
    }//end func
}