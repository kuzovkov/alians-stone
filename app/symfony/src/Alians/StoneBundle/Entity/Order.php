<?php

namespace Alians\StoneBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Alians\StoneBundle\Helper\ImgUpload;

/**
 * Order
 */
class Order
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
     * @var string
     */
    private $email;

    /**
     * @var string
     */
    private $phone;

    /**
     * @var string
     */
    private $skype;

    /**
     * @var string
     */
    private $product;

    /**
     * @var string
     */
    private $material;

    /**
     * @var string
     */
    private $description;

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
     * Set name
     *
     * @param string $name
     * @return Order
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
     * Set email
     *
     * @param string $email
     * @return Order
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set phone
     *
     * @param string $phone
     * @return Order
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get phone
     *
     * @return string 
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set skype
     *
     * @param string $skype
     * @return Order
     */
    public function setSkype($skype)
    {
        $this->skype = $skype;

        return $this;
    }

    /**
     * Get skype
     *
     * @return string 
     */
    public function getSkype()
    {
        return $this->skype;
    }

    /**
     * Set product
     *
     * @param string $product
     * @return Order
     */
    public function setProduct($product)
    {
        $this->product = $product;

        return $this;
    }

    /**
     * Get product
     *
     * @return string 
     */
    public function getProduct()
    {
        return $this->product;
    }

    /**
     * Set material
     *
     * @param string $material
     * @return Order
     */
    public function setMaterial($material)
    {
        $this->material = $material;

        return $this;
    }

    /**
     * Get material
     *
     * @return string 
     */
    public function getMaterial()
    {
        return $this->material;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Order
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

    /**
     * Set img
     *
     * @param string $img
     * @return Order
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
     * @return Order
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
     * @return Order
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
        return 'order';
    }
    
    public function getImageDir()
    {
        return 'orders';
    } 
    
    /**
     * @var array
     * sizes of thumbnail
     */
    
    public function getThumbsizes()
    {
        return array( 100 );
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
    /**
     * @var boolean
     */
    private $answer;


    /**
     * Set answer
     *
     * @param boolean $answer
     * @return Order
     */
    public function setAnswer($answer)
    {
        $this->answer = $answer;

        return $this;
    }

    /**
     * Get answer
     *
     * @return boolean 
     */
    public function getAnswer()
    {
        return $this->answer;
    }
}
