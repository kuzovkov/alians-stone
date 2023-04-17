<?php
namespace Alians\StoneBundle\Admin;
 
use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Validator\ErrorElement;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Knp\Menu\ItemInterface as MenuItemInterface;
 
class PartnerAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        
        $formMapper
            ->add('name', 'text', array( 'label' => 'Название', 'required' => true ))
            ->add('logoshow', null, array( 'label' => 'Показывать', 'required' => false ))
            ->add('logo_url', null, array( 'label' => 'Ссылка', 'required' => false ))
            ->add('description','textarea',array( 'label' => 'Описание', 'required' => false ))
            ->add('img', 'file', array('label' => 'Логотип', 'required'=>false, 'data_class'=>null))
        ;
    }
 
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('name', null, array( 'label' => 'Название', 'required' => true ))
        ;
    }
 
    protected function configureListFields(ListMapper $listMapper)
    {
        $listMapper
             ->addIdentifier('name', 'text', array( 'label' => 'Название', 'required' => true ))
            ->add('logoshow', null, array( 'label' => 'Показывать', 'required' => false ))
            ->add('logo_url', null, array( 'label' => 'Ссылка', 'required' => false ))
            ->add('description','text',array( 'label' => 'Описание', 'required' => false ))
            //->add('img', null, array('label' => 'Имя файла', 'required'=>false, 'data_class'=>null))
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
            ->add('name', 'text', array( 'label' => 'Название', 'required' => true ))
            ->add('logoshow', null, array( 'label' => 'Показывать', 'required' => false ))
            ->add('logo_url', null, array( 'label' => 'Ссылка', 'required' => false ))
            ->add('description','text',array( 'label' => 'Описание', 'required' => false ))
            ->add('img', null, array('label' => 'Файл логотипа', 'required'=>false, 'data_class'=>null))
        ;
    }
    
}