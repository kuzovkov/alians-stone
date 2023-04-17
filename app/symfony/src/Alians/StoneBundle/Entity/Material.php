<?php

namespace Alians\StoneBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
//use Alians\StoneBundle\Helper\Setting;
use Alians\StoneBundle\Helper\Strings;
use Alians\StoneBundle\Helper\ImgUpload;

/**
 * Material
 */
class Material
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
     * @return Material
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
     * @return Material
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
     * @return Material
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
     * @return Material
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
     * @return Material
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
        return 'material';
    }
    
   public function getImageDir()
    {
        return 'material';
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
    
   
    /**
     * @var string
     */
    private $gallery1;

    /**
     * @var string
     */
    private $gallery2;

    /**
     * @var string
     */
    private $gallery3;


    /**
     * Set gallery1
     *
     * @param string $gallery1
     * @return Material
     */
    public function setGallery1($gallery1)
    {
        $this->gallery1 = $gallery1;

        return $this;
    }

    /**
     * Get gallery1
     *
     * @return string 
     */
    public function getGallery1()
    {
        return $this->gallery1;
    }

    /**
     * Set gallery2
     *
     * @param string $gallery2
     * @return Material
     */
    public function setGallery2($gallery2)
    {
        $this->gallery2 = $gallery2;

        return $this;
    }

    /**
     * Get gallery2
     *
     * @return string 
     */
    public function getGallery2()
    {
        return $this->gallery2;
    }

    /**
     * Set gallery3
     *
     * @param string $gallery3
     * @return Material
     */
    public function setGallery3($gallery3)
    {
        $this->gallery3 = $gallery3;

        return $this;
    }

    /**
     * Get gallery3
     *
     * @return string 
     */
    public function getGallery3()
    {
        return $this->gallery3;
    }
    /**
     * @var string
     */
    private $brand;


    /**
     * Set brand
     *
     * @param string $brand
     * @return Material
     */
    public function setBrand($brand)
    {
        $this->brand = implode( ',', $brand );
        
        return $this;
    }

    /**
     * Get brand
     *
     * @return string 
     */
    public function getBrand()
    {
        return explode( ',', $this->brand );
    }
    
    /**
     * @var string
     */
    private $slug;


    /**
     * Set slug
     *
     * @param string $slug
     * @return Material
     */
    public function setSlug($slug)
    {
       
        $this->slug = $slug;

        return $this;
    }
    
     public function checkSlug()
    {
        $this->slug = ($this->slug)? $this->slug : Strings::name2slug( $this->title );

        return $this;
    }

    /**
     * Get slug
     *
     * @return string 
     */
    public function getSlug()
    {
        return $this->slug;
    }
    /**
     * @var string
     */
    private $text1;

    /**
     * @var string
     */
    private $text2;

    /**
     * @var string
     */
    private $text3;


    /**
     * Set text1
     *
     * @param string $text1
     * @return Material
     */
    public function setText1($text1)
    {
        $this->text1 = $text1;

        return $this;
    }

    /**
     * Get text1
     *
     * @return string 
     */
    public function getText1()
    {
        return $this->text1;
    }

    /**
     * Set text2
     *
     * @param string $text2
     * @return Material
     */
    public function setText2($text2)
    {
        $this->text2 = $text2;

        return $this;
    }

    /**
     * Get text2
     *
     * @return string 
     */
    public function getText2()
    {
        return $this->text2;
    }

    /**
     * Set text3
     *
     * @param string $text3
     * @return Material
     */
    public function setText3($text3)
    {
        $this->text3 = $text3;

        return $this;
    }

    /**
     * Get text3
     *
     * @return string 
     */
    public function getText3()
    {
        return $this->text3;
    }
    /**
     * @var string
     */
    private $brandname;


    /**
     * Set brandname
     *
     * @param string $brandname
     * @return Material
     */
    public function setBrandname($brandname)
    {
        $this->brandname = $brandname;

        return $this;
    }

    /**
     * Get brandname
     *
     * @return string 
     */
    public function getBrandname()
    {
        return $this->brandname;
    }
    /**
     * @var boolean
     */
    private $showmenu;


    /**
     * Set showmenu
     *
     * @param boolean $showmenu
     * @return Material
     */
    public function setShowmenu($showmenu)
    {
        $this->showmenu = $showmenu;

        return $this;
    }

    /**
     * Get showmenu
     *
     * @return boolean 
     */
    public function getShowmenu()
    {
        return $this->showmenu;
    }
    /**
     * @var string
     */
    private $category;


    /**
     * Set category
     *
     * @param string $category
     * @return Material
     */
    public function setCategory($category)
    {
        $this->category = $category;

        return $this;
    }

    /**
     * Get category
     *
     * @return string 
     */
    public function getCategory()
    {
        return $this->category;
    }
    
    public function isMain()
    {
        return ($this->category == '..' || $this->category == '.' || $this->category == $this->slug )? true : false;
    }
}
