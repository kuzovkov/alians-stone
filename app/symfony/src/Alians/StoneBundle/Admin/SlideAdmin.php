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
 
class SlideAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    protected $choices = array(
                                'main' => 'На главной',
                                'worktops' => 'Столешницы на кухню',
                                'sills' => 'Подоконники',
                                'floor' => 'Полы',
                                'stairs' => 'Лестницы',
                                'exterior' => 'Экстерьер'                  
                                );
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        $products = Container::getContainer('products');
        $choices2 = array(0=>'На главной');
        foreach($products as $product) $choices2[$product->getId()] = $product->getTitle();
        
        $formMapper
            ->add('title', 'text', array( 'label' => 'Заголовок', 'required' => true ))
            ->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            ->add('category', 'choice',array('required' => true, 'label' => 'Категория', 'choices'=>$choices2))
            ->add('img', 'file', array('label' => 'Картинка', 'required'=>false, 'data_class'=>null))
            
        ;
    }
 
    protected function configureDatagridFilters(DatagridMapper $datagridMapper)
    {
        $datagridMapper
            ->add('title', null, array( 'label' => 'Заголовок', 'required' => true ))
            //->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            //->add('img', 'text',array('required' => false))
           
        ;
    }
 
    protected function configureListFields(ListMapper $listMapper)
    {
        $products = Container::getContainer('products');
        $choices2 = array(0=>'На главной');
        foreach($products as $product) $choices2[$product->getId()] = $product->getTitle();
       
        $listMapper
            ->addIdentifier('title', null, array( 'label' => 'Заголовок', 'required' => true ))
            ->add('content', 'html', array( 'label' => 'Контент', 'required' => false ))
            ->add('category', 'choice',array('required' => true, 'label' => 'Категория', 'choices'=>$choices2))
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
        $products = Container::getContainer('products');
        $choices2 = array(0=>'На главной');
        foreach($products as $product) $choices2[$product->getId()] = $product->getTitle();
       
        $showMapper
            ->add('title', 'text', array( 'label' => 'Заголовок', 'required' => true ))
            ->add('content', 'textarea', array( 'label' => 'Контент', 'required' => false ))
            ->add('category', 'choice',array('required' => true, 'label' => 'Категория', 'choices'=>$choices2))
            ->add('img', 'text',array('required' => false))
           
        ;
    }
    
    
}