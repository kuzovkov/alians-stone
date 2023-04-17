<?php

namespace Alians\StoneBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
//use Alians\StoneBundle\Helper\Setting;
use Alians\StoneBundle\Helper\ImgUpload;

/**
 * News
 */
class News
{
    
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $title;

    /**
     * @var string
     */
    private $content;

    /**
     * @var string
     */
    private $img;

    /**
     * @var \DateTime
     */
    private $created_at;

    /**
     * @var \DateTime
     */
    private $updated_at;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set title
     *
     * @param string $title
     * @return News
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get title
     *
     * @return string 
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set content
     *
     * @param string $content
     * @return News
     */
    public function setContent($content)
    {
        $this->content = $content;

        return $this;
    }

    /**
     * Get content
     *
     * @return string 
     */
    public function getContent()
    {
        return $this->content;
    }

    /**
     * Set img
     *
     * @param string $img
     * @return News
     */
    public function setImg($img)
    {
        if ($img==null) return $this;
        ImgUpload::deleteImage($this);
        $this->img = $img;

        return $this;
    }

    /**
     * Get img
     *
     * @return string 
     */
    public function getImg()
    {
        return $this->img;
    }

    /**
     * Set created_at
     *
     * @param \DateTime $createdAt
     * @return News
     */
    public function setCreatedAt($createdAt)
    {
        $this->created_at = $createdAt;

        return $this;
    }

    /**
     * Get created_at
     *
     * @return \DateTime 
     */
    public function getCreatedAt()
    {
        return $this->created_at;
    }

    /**
     * Set updated_at
     *
     * @param \DateTime $updatedAt
     * @return News
     */
    public function setUpdatedAt($updatedAt)
    {
        $this->updated_at = $updatedAt;

        return $this;
    }

    /**
     * Get updated_at
     *
     * @return \DateTime 
     */
    public function getUpdatedAt()
    {
        return $this->updated_at;
    }
    /**
     * @ORM\PrePersist
     */
    public function setCreatedAtValue()
    {
        if(!$this->getCreatedAt())
        {
            $this->created_at = new \DateTime();
        }
    }

    /**
     * @ORM\PreUpdate
     */
    public function setUpdatedAtValue()
    {
        $this->updated_at = new \DateTime();
    }
    
    public function __toString()
    {
        return $this->getId() ? strval($this->getId()) : '-';
    }
    
    /**
     *  Name of entity
     * @return string Entity name
     **/
    public function getEntityName()
    {
        return 'news';
    }
    
    public function getImageDir()
    {
        return 'news';
    } 
    
    /**
     * @var array
     * sizes of thumbnail
     */
    
    public function getThumbsizes()
    {
        return array( 80, 100 , 150 );
    }
    
     /**
     *  Get link to image
     * //@return string Link to image or false if fail
     */
    
    public function getLinkToImg()
    {
        return ImgUpload::getLinkToImg($this);
    } //end func   
       
    
    /**
     *  Get relative link to image
     * //@return string Link to image or false if fail
     */
     
    public function getRelativeLinkToImg()
    {
        return ImgUpload::getRelativeLinkToImg($this);
    }//end func
    
    /**
     *  Get relative link to Thunbnail
     * //@return string Link to image or false if fail
     **/
    
    public function getRelativeLinkToThumbnailImg($size)
    {
        return ImgUpload::getRelativeLinkToThumbnailImg($this, $size);
    }//end func
    
    
    /**
     *  Upload image file from POST request
     * /@return bool false if fail
     **/
    
    public function uploadImage()
    {
        return ImgUpload::uploadImage($this);   
    }//end func
    
    
}
