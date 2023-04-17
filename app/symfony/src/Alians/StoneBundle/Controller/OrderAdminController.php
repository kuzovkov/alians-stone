<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Order;
use Alians\StoneBundle\Helper\ImgUpload;
use Alians\StoneBundle\Helper\Setting;
use Alians\StoneBundle\Helper\Container;

class OrderAdminController extends Controller
{
    public function createAction($id=null)
    {
        $products = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product")->getAll();
        Container::setContainer('products',$products);
        $materials = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material")->getAll();
        Container::setContainer('materials',$materials);
        $response = parent::createAction();
        return $response;
        
    }//end func
    
    public function editAction($id=null)
    {
        $products = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product")->getAll();
        Container::setContainer('products',$products);
        $materials = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material")->getAll();
        Container::setContainer('materials',$materials);
        $response = parent::editAction();
        return $response;
       
    }//end func
    
    public function deleteAction($id=null)
    {
        $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Order");
        $order = $repository->find($id);
        ImgUpload::deleteImage($order);
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        $products = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product")->getAll();
        Container::setContainer('products',$products);
        $materials = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material")->getAll();
        Container::setContainer('materials',$materials);
        if ( isset($_POST['action']) && $_POST['action'] == 'delete' && isset($_POST['idx']) )
        {
            $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Order");
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
        $products = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product")->getAll();
        Container::setContainer('products',$products);
        $materials = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material")->getAll();
        Container::setContainer('materials',$materials);
        $response = parent::showAction($id);
        return $response;
       
    }//end func
    
    public function listAction()
    {
        $products = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product")->getAll();
        Container::setContainer('products',$products);
        $materials = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material")->getAll();
        Container::setContainer('materials',$materials);
        $response = parent::listAction();
        return $response;
       
    }//end func
}