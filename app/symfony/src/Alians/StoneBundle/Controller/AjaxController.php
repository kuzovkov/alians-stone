<?php

namespace Alians\StoneBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Alians\StoneBundle\Helper\Setting;

class AjaxController extends Controller
{
   
    
    public function subscribeAction()
    {
        $request = $this->getRequest();
        $session = $request->getSession();
        $condition = $session->get('subscr') && 
        (intval($session->get('subscr')) > time() - Setting::SUBSCRIBE_INTERVAL);
        if ( $condition )
            return $this->render(Setting::BUNDLE.':Front:_subscr.fail.html.twig');
        $name = $request->request->get('name');
        $email = $request->request->get('email');
        if ( $this->getDoctrine()->getRepository(Setting::BUNDLE.":Message")->emailExists($email))
             return $this->render(Setting::BUNDLE.':Front:_subscr.emailexists.html.twig');
        $repoMess = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Message");
        $repoMess->saveSubscribe( $name, $email );
        $session->set('subscr',time());
        return $this->render(Setting::BUNDLE.':Front:_subscribe.html.twig');
    }//end func


}