<?php

namespace Alians\StoneBundle\Controller;
 
use Sonata\AdminBundle\Controller\CRUDController as Controller;
use Alians\StoneBundle\Entity\Page;
 
class PageAdminController extends Controller
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
        
        $response = parent::deleteAction($id);
        return $response;
       
    }//end func
    
    public function batchAction($id=null)
    {
        
        $response = parent::batchAction($id=null);
        return $response;
       
    }//end func
}