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
 
class MaterialAdmin extends Admin
{
    // setup the default sort column and order
    protected $datagridValues = array(
        '_sort_order' => 'DESC',
        '_sort_by' => 'id'
    );
    
 
    protected function configureFormFields(FormMapper $formMapper)
    {
        
        $brands = Container::getContainer('brands');
        $choices = array();
        foreach($brands as $brand) $choices[$brand->getBrand()] = $brand->getTitle();
        $galleries = Container::getContainer('gallery');
        $choices2 = array();
        foreach($galleries as $gallery) $choices2[$gallery->getSlug()] = $gallery->getName();
        $materials = Container::getContainer('materials');
        $choices3 = array('..'=>'Название категории','.'=>'Вид материала');
        foreach($materials as $material) $choices3[$material->getSlug()] = $material->getTitle();
        
        
        $formMapper
            ->add('title', 'text', array( 'label' => 'Название', 'required' => true ))
            ->add('content', 'textarea', array( 'label' => 'Описание', 'required' => false ))
            ->add('brand','choice', array( 'label'=>'Выберите производителя', 'required' => false, 'multiple'=>true, 'choices'=>$choices ))
            ->add('slug','text',array('label'=>'Maretial_id', 'required' => false ))
            ->add('category','choice',array('label'=>'Категория', 'required' => true, 'choices' =>$choices3 ))
            ->add('showmenu',null,array('label'=>'Показывать в меню'))
            ->add('img', 'file', array('label' => 'Картинка', 'required'=>false, 'data_class'=>null))
            ->add('gallery1','choice', array('label' => 'Галерея №1', 'required'=>false, 'choices'=>$choices2))
            ->add('text1','textarea',array('label' => 'Текст к галерее №1', 'required'=>false))
            ->add('gallery2','choice', array('label' => 'Галерея №2', 'required'=>false, 'choices'=>$choices2))
            ->add('text2','textarea',array('label' => 'Текст к галерее №2', 'required'=>false))
            ->add('gallery3','choice', array('label' => 'Галерея №3', 'required'=>false, 'choices'=>$choices2))
            ->add('text3','textarea',array('label' => 'Текст к галерее №3', 'required'=>false))
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
        $brands = Container::getContainer('brands');
        $choices = array();
        foreach($brands as $brand) $choices[$brand->getBrand()] = $brand->getTitle();
        $materials = Container::getContainer('materials');
        $choices3 = array('..'=>'Название категории','.'=>'Вид материала');
        foreach($materials as $material) $choices3[$material->getSlug()] = $material->getTitle();
        
        $listMapper
            ->addIdentifier('title', null, array( 'label' => 'Название', 'required' => true ))
            ->add('content', 'html', array( 'label' => 'Описание', 'required' => false ))
            ->add('brand','choice', array( 'label'=>'Производитель', 'required' => false, 'multiple'=>true, 'delimiter'=>',','choices'=>$choices))
            ->add('category','choice',array('label'=>'Категория', 'required' => false, 'choices' =>$choices3 ))
            ->add('showmenu',null,array('label'=>'Показывать в меню'))
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
        $brands = Container::getContainer('brands');
        $choices = array();
        foreach($brands as $brand) $choices[$brand->getBrand()] = $brand->getTitle();
        $galleries = Container::getContainer('gallery');
        $choices2 = array();
        foreach($galleries as $gallery) $choices2[$gallery->getSlug()] = $gallery->getName();
        $materials = Container::getContainer('materials');
        $choices3 = array('..'=>'Название категории','.'=>'Вид материала');
        foreach($materials as $material) $choices3[$material->getSlug()] = $material->getTitle();
        
        $showMapper
            ->add('title', 'text', array( 'label' => 'Название', 'required' => true ))
            ->add('content', 'html', array( 'label' => 'Описание', 'required' => false ))
            ->add('slug','text',array('label'=>'Maretial_id', 'required' => false))
            ->add('showmenu',null,array('label'=>'Показывать в меню'))
            ->add('brand','choice', array( 'label'=>'Производитель', 'required' => false, 'multiple'=>true, 'delimiter'=>',','choices'=>$choices))
            ->add('category','choice',array('label'=>'Категория', 'required' => false, 'choices' =>$choices3 ))
            ->add('img', 'text',array('required' => false))
            ->add('gallery1','choice', array('label' => 'Галерея №1', 'required'=>false, 'choices'=>$choices2))
            ->add('text1','textarea',array('label' => 'Текст к галерее №1', 'required'=>false))
            ->add('gallery2','choice', array('label' => 'Галерея №2', 'required'=>false, 'choices'=>$choices2))
            ->add('text2','textarea',array('label' => 'Текст к галерее №2', 'required'=>false))
            ->add('gallery3','choice', array('label' => 'Галерея №3', 'required'=>false, 'choices'=>$choices2))
            ->add('text3','textarea',array('label' => 'Текст к галерее №3', 'required'=>false))
        ;
    }
    
}