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
 
class BrandAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        $galleries = Container::getContainer('gallery');
        $choices2 = array();
        foreach($galleries as $gallery) $choices2[$gallery->getSlug()] = $gallery->getName();
        
        $formMapper
            ->add('title', 'text', array( 'label' => 'Название', 'required' => true ))
            ->add('content', 'textarea', array( 'label' => 'Описание', 'required' => false ))
            ->add('brand','text',array('label'=>'Brand_id', 'required' => false ))
            ->add('gallery1','choice', array('label' => 'Галерея №1', 'required'=>false, 'choices'=>$choices2))
            ->add('text1','textarea',array('label' => 'Текст к галерее №1', 'required'=>false))
            ->add('gallery2','choice', array('label' => 'Галерея №2', 'required'=>false, 'choices'=>$choices2))
            ->add('text2','textarea',array('label' => 'Текст к галерее №2', 'required'=>false))
            ->add('gallery3','choice', array('label' => 'Галерея №3', 'required'=>false, 'choices'=>$choices2))
            ->add('text3','textarea',array('label' => 'Текст к галерее №3', 'required'=>false))
        
            ->add('img', 'file', array('label' => 'Картинка', 'required'=>false, 'data_class'=>null))
        ;
    }
 
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('title', null, array( 'label' => 'Название', 'required' => true ))
            //->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            //->add('img', 'text',array('required' => false))
            //->add('type', null,array('required' => false))
            //->add('user_id', null,array('required' => false))
        ;
    }
 
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('title', null, array( 'label' => 'Название', 'required' => true ))
            ->add('content', 'html', array( 'label' => 'Описание', 'required' => false ))
            ->add('img', null,array('label' =>'Изображение'))
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
        $choices2 = array();
        foreach($galleries as $gallery) $choices2[$gallery->getSlug()] = $gallery->getName();
        
        $showMapper
            ->add('title', 'text', array( 'label' => 'Название', 'required' => true ))
            ->add('content', 'html', array( 'label' => 'Описание', 'required' => false ))
            ->add('brand','text',array('label'=>'Brand_id', 'required' => false ))
           ->add('gallery1','choice', array('label' => 'Галерея №1', 'required'=>false, 'choices'=>$choices2))
            ->add('text1','textarea',array('label' => 'Текст к галерее №1', 'required'=>false))
            ->add('gallery2','choice', array('label' => 'Галерея №2', 'required'=>false, 'choices'=>$choices2))
            ->add('text2','textarea',array('label' => 'Текст к галерее №2', 'required'=>false))
            ->add('gallery3','choice', array('label' => 'Галерея №3', 'required'=>false, 'choices'=>$choices2))
            ->add('text3','textarea',array('label' => 'Текст к галерее №3', 'required'=>false))
        
            ->add('img', 'text',array('required' => false))
        ;
    }
    
}