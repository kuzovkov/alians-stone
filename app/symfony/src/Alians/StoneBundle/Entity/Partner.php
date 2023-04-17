<?php

namespace Alians\StoneBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
//use Alians\StoneBundle\Helper\Setting;
use Alians\StoneBundle\Helper\ImgUpload;

/**
 * Partner
 */
class Partner
{
    
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $name;

    /**
     * @var boolean
     */
    private $logoshow;


    /**
     * @var string
     */
    private $logo_url;

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
     * Set name
     *
     * @param string $name
     * @return Partner
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set logoshow
     *
     * @param boolean $logoshow
     * @return Partner
     */
    public function setLogoshow($logoshow)
    {
        $this->logoshow = $logoshow;

        return $this;
    }

    /**
     * Get logoshow
     *
     * @return boolean 
     */
    public function getLogoshow()
    {
        return $this->logoshow;
    }

    /**
     * Set logo_url
     *
     * @param string $logoUrl
     * @return Partner
     */
    public function setLogoUrl($logoUrl)
    {
        $this->logo_url = $logoUrl;

        return $this;
    }

    /**
     * Get logo_url
     *
     * @return string 
     */
    public function getLogoUrl()
    {
        return $this->logo_url;
    }

    /**
     * Set created_at
     *
     * @param \DateTime $createdAt
     * @return Partner
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
     * @return Partner
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
        return 'partner';
    }
    /**
     * @var string
     */
    private $img;

    /**
     * @var string
     */
    private $description;


    /**
     * Set img
     *
     * @param string $img
     * @return Partner
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
     * Set description
     *
     * @param string $description
     * @return Partner
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }
    
     public function getImageDir()
    {
        return 'partners';
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
