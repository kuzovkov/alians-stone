<?php
namespace Alians\StoneBundle\Admin;
 
use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Validator\ErrorElement;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Knp\Menu\ItemInterface as MenuItemInterface;
 
class GalleryAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        
        $formMapper
            ->add('name', 'text', array( 'label' => 'Имя', 'required' => true ))
            ->add('slug', 'text', array( 'label' => 'Id', 'required' => false ))
            ->add('description', 'textarea', array( 'label' => 'Описание', 'required' => false ))
            
        ;
    }
 
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('name', null, array( 'label' => 'Имя', 'required' => true ))
        ;
    }
 
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
            ->addIdentifier('name', null, array( 'label' => 'Имя', 'required' => true ))
            ->add('description', 'textarea', array( 'label' => 'Описание', 'required' => true ))
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
        $showMapper
            ->add('name', 'text', array( 'label' => 'Имя', 'required' => true ))
            ->add('slug', 'text', array( 'label' => 'Id', 'required' => true ))
            ->add('description', 'textarea', array( 'label' => 'Описание', 'required' => true ))
        ;
    }
    
}