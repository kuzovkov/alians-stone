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
 
class OrderAdmin extends Admin
{
     //setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
   );
    
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        $products = Container::getContainer('products');
        $choices = array();
        foreach($products as $product) $choices[$product->getId()] = $product->getTitle();
        $materials = Container::getContainer('materials');
        $choices2 = array();
        foreach($materials as $material) $choices2[$material->getSlug()] = $material->getTitle();
        
        $formMapper
            ->add('name', 'text', array( 'label' => 'Имя клиента', 'required' => false ))
            ->add('email', 'text', array( 'label' => 'Email', 'required' => false ))
            ->add('phone','text',array('label'=>'Телефон', 'required' => false ))
            ->add('skype','text', array('label' => 'Skype', 'required'=>false))
            ->add('product','choice',array('label' => 'Вид продукта', 'required'=>false, 'choices'=>$choices))
            ->add('material','choice', array('label' => 'Материал', 'required'=>false, 'choices'=>$choices2))
            ->add('description','textarea',array('label' => 'Описание', 'required'=>false))
            ->add('answer',null,array('label'=>'Обработана', 'required'=>false))
            ->add('img', 'file', array('label' => 'Картинка', 'required'=>false, 'data_class'=>null))
        ;
    }
 
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('name', null, array( 'label' => 'Имя клиента', 'required' => false ))
            //->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            //->add('img', 'text',array('required' => false))
            //->add('type', null,array('required' => false))
            //->add('user_id', null,array('required' => false))
        ;
    }
 
    protected function configureListFields(ListMapper $listMapper)
    {
        
        $products = Container::getContainer('products');
        $choices = array();
        foreach($products as $product) $choices[$product->getId()] = $product->getTitle();
        
        $materials = Container::getContainer('materials');
        $choices2 = array();
        foreach($materials as $material) $choices2[$material->getSlug()] = $material->getTitle();
        
        $listMapper
            ->add('name', 'text', array( 'label' => 'Имя клиента', 'required' => false ))
            ->add('email', 'text', array( 'label' => 'Email', 'required' => false ))
            ->add('phone','text',array('label'=>'Телефон', 'required' => false ))
           ->add('skype','text', array('label' => 'Skype', 'required'=>false))
           ->add('product','choice',array('label' => 'Вид продукта', 'required'=>false, 'choices'=>$choices))
            ->add('material','choice', array('label' => 'Материал', 'required'=>false, 'choices'=>$choices2))
            ->add('description','textarea',array('label' => 'Описание', 'required'=>false))
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
        $products = Container::getContainer('products');
        $choices = array();
        foreach($products as $product) $choices[$product->getId()] = $product->getTitle();
        $materials = Container::getContainer('materials');
        $choices2 = array();
        foreach($materials as $material) $choices2[$material->getSlug()] = $material->getTitle();
        
        $showMapper
            ->add('name', 'text', array( 'label' => 'Имя клиента', 'required' => true ))
            ->add('email', 'text', array( 'label' => 'Email', 'required' => false ))
            ->add('phone','text',array('label'=>'Телефон', 'required' => false ))
            ->add('skype','text', array('label' => 'Skype', 'required'=>false))
            ->add('product','choice',array('label' => 'Вид продукта', 'required'=>false, 'choices'=>$choices))
            ->add('material','choice', array('label' => 'Материал', 'required'=>false, 'choices'=>$choices2))
            ->add('description','textarea',array('label' => 'Описание', 'required'=>false))
            ->add('answer','text',array('label'=>'Обработана', 'required'=>false))
            ->add('img', 'file', array('label' => 'Картинка', 'required'=>false, 'data_class'=>null))
        ;
    }
    
}