<?php
namespace Alians\StoneBundle\Admin;
 
use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Validator\ErrorElement;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Knp\Menu\ItemInterface as MenuItemInterface;
 
class NewsAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        
        $formMapper
            ->add('title', 'text', array( 'label' => 'Заголовок', 'required' => true ))
            ->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            ->add('img', 'file', array('label' => 'Картинка', 'required'=>false, 'data_class'=>null))
            
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
        $listMapper
            ->addIdentifier('title', null, array( 'label' => 'Заголовок', 'required' => true ))
            ->add('content', 'html', array( 'label' => 'Контент', 'required' => false ))
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
        $showMapper
            ->add('title', 'text', array( 'label' => 'Заголовок', 'required' => true ))
            ->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            ->add('img', 'text',array('required' => false))
        ;
    }
    
}