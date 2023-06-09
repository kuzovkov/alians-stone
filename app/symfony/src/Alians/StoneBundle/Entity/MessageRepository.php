<?php

namespace Alians\StoneBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * MessageRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class MessageRepository extends EntityRepository
{
    public function saveMessage($name,$phone,$mess)
    {
        $message = new Message();
        $em = $this->getEntityManager();
        $message->setName($name);
        $message->setPhone($phone);
        $message->setMessage($mess);
        $message->setType('callback');
        $em->persist($message);
        $em->flush();
    } //end func
    
    public function saveSubscribe($name,$email)
    {
        $message = new Message();
        $em = $this->getEntityManager();
        $message->setName($name);
        $message->setMessage($email);
        $message->setType('subscribe');
        $em->persist($message);
        $em->flush();
    } //end func
    
    public function emailExists($email)
    {
        $mess = $this->findBy(array('type'=>'subscribe','message'=>$email));
        return ($mess)? true : false;
    }//end func
    
    
}
