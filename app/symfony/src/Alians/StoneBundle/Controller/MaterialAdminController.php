<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Material;
use Alians\StoneBundle\Helper\Setting;
use Alians\StoneBundle\Helper\Container;
use Alians\StoneBundle\Helper\ImgUpload;
 
class MaterialAdminController extends Controller
{
    public function createAction($id=null)
    {
        $brands = $this->getDoctrine()->getRepository("AliansStoneBundle:Brand")->getAll();
        Container::setContainer('brands',$brands);
        $materials = $this->getDoctrine()->getRepository("AliansStoneBundle:Material")->getMaterialForAdmin();
        Container::setContainer('materials',$materials);
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $response = parent::createAction();
        return $response;
        
    }//end func
    
    public function editAction($id=null)
    {
        $brands = $this->getDoctrine()->getRepository("AliansStoneBundle:Brand")->getAll();
        Container::setContainer('brands',$brands);
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $materials = $this->getDoctrine()->getRepository("AliansStoneBundle:Material")->getMaterialForAdmin();
        Container::setContainer('materials',$materials);
        $response = parent::editAction($id);
        return $response;
       
    }//end func
    
    public function deleteAction($id=null)
    {
         $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $image = $repository->find($id);
        ImgUpload::deleteImage($image);
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        $brands = $this->getDoctrine()->getRepository("AliansStoneBundle:Brand")->getAll();
        Container::setContainer('brands',$brands);
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $materials = $this->getDoctrine()->getRepository("AliansStoneBundle:Material")->getMaterialForAdmin();
        Container::setContainer('materials',$materials);
        if ( isset($_POST['action']) && $_POST['action'] == 'delete' && isset($_POST['idx']) )
        {
           $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
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
        $brands = $this->getDoctrine()->getRepository("AliansStoneBundle:Brand")->getAll();
        Container::setContainer('brands',$brands);
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $materials = $this->getDoctrine()->getRepository("AliansStoneBundle:Material")->getMaterialForAdmin();
        Container::setContainer('materials',$materials);
        $response = parent::showAction($id);
        return $response;
       
    }//end func
    
    public function listAction()
    {
        $brands = $this->getDoctrine()->getRepository("AliansStoneBundle:Brand")->getAll();
        Container::setContainer('brands',$brands);
        $gallery = $this->getDoctrine()->getRepository("AliansStoneBundle:Gallery")->getAll();
        Container::setContainer('gallery',$gallery);
        $materials = $this->getDoctrine()->getRepository("AliansStoneBundle:Material")->getMaterialForAdmin();
        Container::setContainer('materials',$materials);
        $response = parent::listAction();
        return $response;
       
    }//end func
}