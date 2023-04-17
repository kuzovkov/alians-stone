<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Slide;
use Alians\StoneBundle\Helper\Container;
use Alians\StoneBundle\Helper\ImgUpload;
use Alians\StoneBundle\Helper\Setting;
 
class SlideAdminController extends Controller
{
    public function createAction($id=null)
    {
        $products = $this->getDoctrine()->getRepository("AliansStoneBundle:Product")->getAll();
        Container::setContainer('products',$products);
        $response = parent::createAction();
        return $response;
        
    }//end func
    
    public function editAction($id=null)
    {
        $products = $this->getDoctrine()->getRepository("AliansStoneBundle:Product")->getAll();
        Container::setContainer('products',$products);
        $response = parent::editAction();
        return $response;
       
    }//end func
    
    public function deleteAction($id=null)
    {
        $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Slide");
        $image = $repository->find($id);
        ImgUpload::deleteImage($image);
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        $products = $this->getDoctrine()->getRepository("AliansStoneBundle:Product")->getAll();
        Container::setContainer('products',$products);
        if ( isset($_POST['action']) && $_POST['action'] == 'delete' && isset($_POST['idx']) )
        {
            $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Slide");
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
        $products = $this->getDoctrine()->getRepository("AliansStoneBundle:Product")->getAll();
        Container::setContainer('products',$products);
        $response = parent::showAction($id);
        return $response;
       
    }//end func
    
    public function listAction()
    {
        $products = $this->getDoctrine()->getRepository("AliansStoneBundle:Product")->getAll();
        Container::setContainer('products',$products);
        $response = parent::listAction();
        return $response;
       
    }//end func
}