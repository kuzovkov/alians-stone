<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Article;
use Alians\StoneBundle\Helper\ImgUpload;
use Alians\StoneBundle\Helper\Setting;

 
class ArticleAdminController extends Controller
{
    // Your code will be here
    public function editAction($id=null)
    {
        $request = $this->get('request');
        $uniqid = $request->query->get('uniqid');
        if ( isset( $uniqid ) )
        {
            if (get_magic_quotes_gpc())
            {
                $_POST[$uniqid]['content'] = stripslashes( $_POST[$uniqid]['content'] );
            }
        }
        $response = parent::editAction();
        return $response;
    }
	
	public function createAction()
	{
        $response = parent::createAction();
        return $response;
	}
	
	public function listAction()
	{
        $response = parent::listAction();
        return $response;
	}
	
	public function showAction($id=null)
	{
        $response = parent::showAction($id);
        return $response;
	}
	
	public function deleteAction($id=null)
    {
        $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Article");
        $image = $repository->find($id);
        ImgUpload::deleteImage($image);
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        if ( isset($_POST['action']) && $_POST['action'] == 'delete' && isset($_POST['idx']) )
        {
            $repository = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Article");
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
}