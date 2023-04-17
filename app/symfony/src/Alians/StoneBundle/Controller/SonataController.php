<?php

namespace Alians\StoneBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class SonataController extends Controller
{
    /**
     * Controller for AJAX query to get list available images in JSON format(in Admin panel)
     * 
     **/
    public function getImageListAction()
    {
        $repository = $this->getDoctrine()->getRepository("AliansStoneBundle:Image");
        $files = $repository->getListImage();
        return $this->render('AliansStoneBundle:SonataAdminJS:image.list.json.php', array('files' => $files)); 
    }//end func
    
    
}