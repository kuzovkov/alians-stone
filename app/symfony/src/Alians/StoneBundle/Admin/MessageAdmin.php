<?php
namespace Alians\StoneBundle\Admin;
 
use Sonata\AdminBundle\Admin\Admin;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Validator\ErrorElement;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Knp\Menu\ItemInterface as MenuItemInterface;
 
class MessageAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    
    protected $typeChoices = array('callback'=>'Обратный звонок','subscribe'=>'Подписка');
    
    protected function configureFormFields(FormMapper $formMapper)
    {
        
        $formMapper
            ->add('name', 'text', array( 'label' => 'Имя', 'required' => true ))
            ->add('phone', 'text', array( 'label' => 'Телефон', 'required' => true ))
            ->add('message', 'textarea', array( 'label' => 'Сообщение', 'required' => true ))
            ->add('type','choice',array('label'=>'Тип','required'=>false,'choices'=>$this->typeChoices))
            ->add('created_at', 'datetime',array('label'=>'Поступило','widget' => 'single_text', 'attr' => array('class' => 'datepicker'),'required' => true))
            ->add('answer', null, array( 'label' => 'Обработано', 'required' => true ))
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
            ->add('phone', 'text', array( 'label' => 'Телефон', 'required' => true ))
            ->add('message', 'textarea', array( 'label' => 'Сообщение', 'required' => true ))
            ->add('type','choice',array('label'=>'Тип','required'=>false,'choices'=>$this->typeChoices))
             ->add('created_at', 'date',array('label'=>'Поступило','required' => true))
            ->add('answer', null, array( 'label' => 'Обработано', 'required' => true ))
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
            ->add('phone', 'text', array( 'label' => 'Телефон', 'required' => true ))
            ->add('message', 'textarea', array( 'label' => 'Сообщение', 'required' => true ))
            ->add('type','choice',array('label'=>'Тип','required'=>false,'choices'=>$this->typeChoices))
            ->add('created_at', 'date',array('label'=>'Поступило','required' => true))
            ->add('answer', null, array( 'label' => 'Обработано', 'required' => true ))
        ;
    }
    
}