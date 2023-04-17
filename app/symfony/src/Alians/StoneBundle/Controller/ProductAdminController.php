<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Product;
use Alians\StoneBundle\Helper\Container;
use Alians\StoneBundle\Helper\ImgUpload;
use Alians\StoneBundle\Helper\Setting;
 
class ProductAdminController extends Controller
{
    public function createAction($id=null)
    {
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $response = parent::createAction();
        return $response;
        
    }//end func
    
    public function editAction($id=null)
    {
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $response = parent::editAction();
        return $response;
       
    }//end func
    
    public function deleteAction($id=null)
    {
        $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product");
        $image = $repository->find($id);
        ImgUpload::deleteImage($image);
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        if ( isset($_POST['action']) && $_POST['action'] == 'delete' && isset($_POST['idx']) )
        {
            $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product");
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
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $response = parent::showAction($id);
        return $response;
       
    }//end func
    
    public function listAction()
    {
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $response = parent::listAction();
        return $response;
       
    }//end func
}