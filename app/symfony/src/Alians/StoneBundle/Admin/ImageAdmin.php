<?php
namespace Alians\StoneBundle\Admin;
 
use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Validator\ErrorElement;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Knp\Menu\ItemInterface as MenuItemInterface;
use Alians\StoneBundle\Helper\Container;
 
class ImageAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        $galleries = Container::getContainer('gallery');
        $choices = array();
        foreach($galleries as $gallery) $choices[$gallery->getSlug()] = $gallery->getName();
        $formMapper
            ->add('title', 'text', array( 'label' => 'Заголовок', 'required' => true ))
            ->add('description', 'text', array( 'label' => 'Описание', 'required' => false ))
            ->add('img', 'file', array('label' => 'Изображение', 'required'=>false, 'data_class'=>null))
            ->add('gallery','choice', array('label' => 'Галереи', 'required'=>false, 'multiple'=>true, 'choices'=>$choices))
       
        ;
    }
 
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        
        $datagridMapper
            ->add('title', null, array( 'label' => 'Заголовок', 'required' => true ))
            //->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            //->add('img', 'text',array('required' => false))
            //->add('type', null,array('required' => false))
            //->add('user_id', null,array('required' => false))
        ;
    }
 
    protected function configureListFields(ListMapper $listMapper)
    {
        $galleries = Container::getContainer('gallery');
        $choices = array();
        foreach($galleries as $gallery) $choices[$gallery->getSlug()] = $gallery->getName();
        $listMapper
            ->addIdentifier('title', null, array( 'label' => 'Заголовок', 'required' => true ))
            ->add('description', 'text', array( 'label' => 'Описание', 'required' => false ))
            ->add('img', null,array('label' =>'Изображение'))
            ->add('gallery','choice', array('label' => 'Галереи', 'required'=>false, 'multiple'=>true,'choices'=>$choices))
            ->add('_action', 'actions', array(
                'actions' => array(
                    'show' => array(),
                    'edit' => array(),
                    'delete' => array(),
                )
            ))
        ;
    }
    
    protected function configureShowField(ShowMapper $showMapper)
    {
        $galleries = Container::getContainer('gallery');
        $choices = array();
        foreach($galleries as $gallery) $choices[$gallery->getSlug()] = $gallery->getName();
        $showMapper
            ->add('title', 'text', array( 'label' => 'Заголовок', 'required' => true ))
            ->add('description', 'text', array( 'label' => 'Описание', 'required' => false ))
            ->add('img', 'text',array('required' => false))
            ->add('gallery','choice', array('label' => 'Галереи', 'required'=>false,'multiple'=>true, 'choices'=>$choices))
        ;
    }
    
}