<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Sonet;
use Alians\StoneBundle\Helper\Container;
use Alians\StoneBundle\Helper\ImgUpload;
use Alians\StoneBundle\Helper\Setting;
 
class SonetAdminController extends Controller
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
        $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Sonet");
        $image = $repository->find($id);
        ImgUpload::deleteImage($image);
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        if ( isset($_POST['action']) && $_POST['action'] == 'delete' && isset($_POST['idx']) )
        {
            $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Sonet");
            $idx = $_POST['idx'];
            foreach( $idx as $id )
            {
                $image = $repository->find($id);
                ImgUpload::deleteImage($image);
            }
        }
        
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