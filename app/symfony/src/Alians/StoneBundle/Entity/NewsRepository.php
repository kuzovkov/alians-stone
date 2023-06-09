<?php

namespace Alians\StoneBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * NewsRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class NewsRepository extends EntityRepository
{
    public function getNews()
    {
        $news = $this->findAll();
        if(!$news) return false;
        return $news;
    }//end func
    
    public function getAll()
    {
        $news = $this->findAll();
        if(!$news) return false;
        return $news;
    }//end func
    
    public function getOne($id)
    {
        $new = $this->find($id);
        if($new) return $new;
        return false;
    }//end func
    
}
