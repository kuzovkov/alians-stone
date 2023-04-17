<?php

namespace Alians\StoneBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Alians\StoneBundle\Helper\CacheControl;
use Alians\StoneBundle\Helper\Setting;

class FrontController extends Controller
{
    private $sharedEntities = array('News','Partner','Setting','Sonet');
    private $new_callback = 'Поступил новый обратный звонок';
    private $new_order = 'Поступил новый заказ';
    
    public function indexAction()
    {
        $entities = array('Slide', 'Project', 'Material', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoSlide = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Slide");
        $repoProject = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Project");
        $repoMaterial = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $repoImages = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $data['slides'] = $repoSlide->getSlides();
        $data['projects'] = $repoProject->getProjects();
        $data['materials'] = $repoMaterial->getMaterialsForMenu();
        $data['images'] = $repoImages->getGallery('menyu');
        $response = $this->render(Setting::BUNDLE.':Front:index.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function aboutAction()
    {
        $entities = array();
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $response =  $this->render(Setting::BUNDLE.':Front:about.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function contactAction()
    {
        $entities = array();
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $response = $this->render(Setting::BUNDLE.':Front:contact.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function pageAction($slug=null)
    {
        $entities = array('Page');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoPage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Page");
        $data['page'] = $repoPage->getPage($slug);
        $response = $this->render(Setting::BUNDLE.':Front:page.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function articleAction($slug=null)
    {
        $entities = array('Article');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoArticle = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Article");
        $data['article'] = $repoArticle->getArticle($slug);
        $response = $this->render(Setting::BUNDLE.':Front:article.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function articlesAction()
    {
        $entities = array('Article');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoArticle = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Article");
        $data['articles'] = $repoArticle->getAll();
        //print_r($data['articles']);exit();
        $response = $this->render(Setting::BUNDLE.':Front:articles.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function arrisAction($id=null)
    {
        $entities = array('Arris', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoArris = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Arris");
        $repoImage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $arris = $repoArris->getArris($id);
        $data['arris'] = $arris;
        if ($arris)
        {
            $data['images1'] = $repoImage->getGallery($arris->getGallery1());
            $data['images2'] = $repoImage->getGallery($arris->getGallery2());
            $data['images3'] = $repoImage->getGallery($arris->getGallery3());
        }
        $response = $this->render(Setting::BUNDLE.":Front:arris.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function arrisesAction()
    {
        $entities = array('Arris', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoArris = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Arris");
        $repoImage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $arrises = $repoArris->getArrises();
        $data['arrises'] = $arrises;
        if($arrises)
        {
            foreach( $arrises as $arris )
            {
                $data[$arris->getId()]['images1'] = $repoImage->getGallery($arris->getGallery1());
                $data[$arris->getId()]['images2'] = $repoImage->getGallery($arris->getGallery2());
                $data[$arris->getId()]['images3'] = $repoImage->getGallery($arris->getGallery3());
            }
        }
        
        $response = $this->render(Setting::BUNDLE.":Front:arrises.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    
    public function materialAction($slug=null)
    {
        $entities = array('Material', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoMaterial = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $repoImage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $material = $repoMaterial->getMaterial($slug);
        $data['material'] = $material;
        if ($material)
        {
            $data['images1'] = $repoImage->getGallery($material->getGallery1());
            $data['images2'] = $repoImage->getGallery($material->getGallery2());
            $data['images3'] = $repoImage->getGallery($material->getGallery3());
        }
        $response = $this->render(Setting::BUNDLE.":Front:material.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function submaterialsAction($slug=null)
    {
        $entities = array('Material');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoMaterial = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $materials = $repoMaterial->getMaterialsByCategory($slug);
        $data['material'] = $repoMaterial->getMaterial($slug);
        $data['materials'] = $materials;
        $response = $this->render(Setting::BUNDLE.":Front:submaterials.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function materialsAction()
    {
        $entities = array('Material');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoMaterial = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $materials = $repoMaterial->getMaterials2();
        $data['materials'] = $materials;
        $response = $this->render(Setting::BUNDLE.":Front:materials.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function materialbrandAction($slug=null)
    {
        $entities = array('Brand', 'Material', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoMaterial = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $repoImage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $repoBrand = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Brand");
        $material = $repoMaterial->getMaterial($slug);
        $data['material'] = $material;
        if (!$material) 
        {
            $data['brands'] = $repoBrand->getAll();
            return $this->render(Setting::BUNDLE.':Front:allbrands.html.twig',array('data'=>$data));
        }
        $data['brands'] = $repoBrand->getBrandsByMaterial($material);
        $response = $this->render(Setting::BUNDLE.':Front:brands.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function brandAction($slug=null)
    {
        $entities = array('Brand', 'Material', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoMaterial = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $repoImage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $brand = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Brand")->getBrand($slug);
        $data['brand'] = $brand;
        if ($brand)
        {
            $data['images1'] = $repoImage->getGallery($brand->getGallery1());
            $data['images2'] = $repoImage->getGallery($brand->getGallery2());
            $data['images3'] = $repoImage->getGallery($brand->getGallery3());
        }
        
        $response = $this->render(Setting::BUNDLE.':Front:brand.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function brandsAction()
    {
        $entities = array('Brand');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoBrand = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Brand");
        $brands = $repoBrand->getAll();
        $data['brands'] = $brands;
        $response = $this->render(Setting::BUNDLE.":Front:allbrands.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
   }//end func    
    
    public function productAction($id=null)
    {
        $entities = array('Product', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoProduct = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product");
        $repoImage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $product = $repoProduct->getOne($id);
        $data['product'] = $product;
        if ($product)
        {
            $data['images1'] = $repoImage->getGallery($product->getGallery1());
            $data['images2'] = $repoImage->getGallery($product->getGallery2());
            $data['images3'] = $repoImage->getGallery($product->getGallery3());
        }
        $response = $this->render(Setting::BUNDLE.":Front:product.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function productsAction()
    {
        $entities = array('Product');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoProduct = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product");
        $products = $repoProduct->getAll();
        $data['products'] = $products;
        $response = $this->render(Setting::BUNDLE.":Front:products.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function newsAction()
    {
        $entities = array('News');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoNews = $this->getDoctrine()->getRepository(Setting::BUNDLE.":News");
        $news = $repoNews->getAll();
        $data['news'] = $news;
        $response = $this->render(Setting::BUNDLE.":Front:news.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function newAction($id=null)
    {
        $entities = array('News');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoNews = $this->getDoctrine()->getRepository(Setting::BUNDLE.":News");
        $new = $repoNews->getOne($id);
        $data['new'] = $new;
        $response = $this->render(Setting::BUNDLE.":Front:new.html.twig",array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function partnersAction()
    {
        $entities = array();
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $response = $this->render(Setting::BUNDLE.':Front:partners.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function partnerAction($id=null)
    {
        $entities = array();
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoPartner = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Partner");
        $partner = $repoPartner->getPartner($id);
        $data['partner'] = $partner;
        $response = $this->render(Setting::BUNDLE.':Front:partner.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function projectAction($id=null)
    {
        $entities = array('Project', 'Image');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoProject = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Project");
        $project = $repoProject->getProject($id);
        $repoImage = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $data['project'] = $project;
        if ($project)
        {
            $data['images1'] = $repoImage->getGallery($project->getGallery1());
            $data['images2'] = $repoImage->getGallery($project->getGallery2());
            $data['images3'] = $repoImage->getGallery($project->getGallery3());
        }
        $response = $this->render(Setting::BUNDLE.':Front:project.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function galleryAction()
    {
        $entities = array('Slide', 'Product');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoSlide = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Slide");
        $repoProduct = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product");
        $data['slides'] = $repoSlide->getSlides();
        $data['products'] = $repoProduct->getAll();
        $response = $this->render(Setting::BUNDLE.':Front:gallery.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function orderformAction()
    {
        $entities = array('Material', 'Product');
        $result = CacheControl::cacheCheck($this->getDoctrine(),$this->getRequest(),new Response(), $entities, $this->sharedEntities);
        if (is_object($result)) return $result;
        $data = $this->getSharedData();
        $repoMaterial = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Material");
        $repoProduct = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Product");
        $data['materials'] = $repoMaterial->getMaterialForOrder();
        $data['products'] = $repoProduct->getAll();
        $response = $this->render(Setting::BUNDLE.':Front:order.html.twig',array('data'=>$data));
        return CacheControl::setCacheHeaders($this->getRequest(), $response,$result['lastmodified'],$result['etag']);
    }//end func
    
    public function orderAction()
    {
        $data = $this->getSharedData();
        $request = $this->getRequest();
        $session = $request->getSession();
        $condition = $session->get('order') && 
        (intval($session->get('order')) > time() - Setting::ORDER_INTERVAL);
        if ( $condition )
            return $this->render(Setting::BUNDLE.':Front:order.fail.html.twig',array('data'=>$data));
        $name = $request->request->get('name');
        $email = $request->request->get('email');
        $phone = $request->request->get('phone');
        if ( strlen($name)<2 || strlen($email) < 4 && strlen($phone) < 5 )
            return $this->render(Setting::BUNDLE.':Front:order.fail2.html.twig',array('data'=>$data));
        $skype = $request->request->get('skype');
        $material = $request->request->get('material');
        $product = $request->request->get('product');
        $description = $request->request->get('description');
        $repoOrder = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Order");
        $repoOrder->saveOrder( $name, $email, $phone, $skype, $material, $product, $description );
        $session->set('order',time());
        $this->sendToEmail($this->new_order, $name.'; '.$email.'; '.$phone.'; '.$skype.'; '.$material.'; '.$product.'; '.$description);
        return $this->render(Setting::BUNDLE.':Front:order_resived.html.twig',array('data'=>$data));
        
    }//end func
    
     public function backcallAction()
    {
        $data = $this->getSharedData();
        $request = $this->get('request');
        $name = $request->request->get('name');
        $phone = $request->request->get('phone');
        $mess = $request->request->get('mess');
        if ( strlen($name) < 2 || strlen($phone) < 5 )
            return $this->render(Setting::BUNDLE.':Front:callback.fail.html.twig',array('data'=>$data));
        $repoMess = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Message");
        $repoMess->saveMessage( $name, $phone, $mess );
        $this->sendToEmail($this->new_callback, $name.'; '.$phone.'; '.$mess);
        return $this->render(Setting::BUNDLE.':Front:order_resived.html.twig',array('data'=>$data));
    }//end func
    
    private function getSharedData()
    {
        $data = array();
        foreach ( $this->sharedEntities as $entity )
        {
            $data[strtolower($entity).'s'] = $this->getDoctrine()->getRepository(Setting::BUNDLE.":".$entity)->getAll();
        }
        $imageRepo = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Image");
        $sonetRepo = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Sonet");
        $data['sonet'] = $sonetRepo->getAll();
        $data['logo_top'] = $imageRepo->getImageNames('logo_top');
        //print_r($data['top_logo']);exit();
        $data['logo_bottom'] = $imageRepo->getImageNames('logo_bottom');
        $data['session'] = $this->getRequest()->getSession();
         
        return $data;
    }//end func
    
    private function sendToEmail($subject, $message)
    {
        $repo = $this->getDoctrine()->getRepository(Setting::BUNDLE.":Setting");
        $email = $repo->getValue('email_zakaz');
        file_put_contents('/var/www/html/deb.txt', $email.':'.$subject.':'.$message);
        @mail($email, $subject, $message);
    }//end func
    
}
