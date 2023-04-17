<?php

namespace Alians\StoneBundle\Helper;

use Alians\StoneBundle\Helper\Setting;

class Strings
{
    /**
     * convert film name string in russian to Folm slug(translit)
     * @param string $name Enyity name
     * @return string Entity slug
     **/
    public static function name2slug( $name )
    {
        $name = iconv( Setting::ENCODE_DEST, Setting::ENCODE_SOURCE . '//IGNORE', $name );
        $name = strtolower( $name );
        $lenName = strlen( $name );
        $replace = self::getReplaceArray();
        $slug = '';
        for ( $i = 0; $i < $lenName; $i++ )
        {
            if ( array_key_exists( $name{$i}, $replace ) )
            {
                $slug .= $replace[$name{$i}];
            }
            else
            {
                if ( in_array( $name{$i}, $replace ) )
                    $slug .= $name{$i};
            }
        }
        return $slug;
    }//end func
    
    private static function getReplaceArray()
    {
    return array( 
                            ' ' => '-', 
                            '�' => 'a',
                            '�' => 'a',
                            '�' => 'b',
                            '�' => 'b',
                            '�' => 'v', 
                            '�' => 'v',
                            '�' => 'g',
                            '�' => 'g',
                            '�' => 'd',
                             '�' => 'd',
                            '�' => 'e',
                             '�' => 'e',
                            '�' => 'yo',
                             '�' => 'yo',
                            '�' => 'zh',
                             '�' => 'zh',
                            '�' => 'z',
                            '�' => 'z',
                            '�' => 'i', 
                            '�' => 'i', 
                            '�' => 'iy',
                            '�' => 'iy',
                            '�' => 'k',
                            '�' => 'k', 
                            '�' => 'l',
                            '�' => 'l', 
                            '�' => 'm',
                            '�' => 'm',
                            '�' => 'n',
                            '�' => 'n', 
                            '�' => 'o',
                            '�' => 'o', 
                            '�' => 'p',
                            '�' => 'p', 
                            '�' => 'r',
                            '�' => 'r',
                            '�' => 's',
                            '�' => 's',
                            '�' => 't',
                            '�' => 't',
                            '�' => 'u',
                            '�' => 'u', 
                            '�' => 'f',
                            '�' => 'f', 
                            '�' => 'h',
                            '�' => 'h',
                            '�' => 'ch',
                            '�' => 'ch',
                            '�' => 'ch',
                            '�' => 'ch', 
                            '�' => 'sh', 
                            '�' => 'sh', 
                            '�' => 'sh',
                            '�' => 'sh', 
                            '�' => '',
                            '�' => '',
                            '�' => 'i',
                            '�' => 'i',
                            '�' => '',
                            '�' => '',
                            '�' => 'e',
                             '�' => 'e',
                            '�' => 'yu',
                            '�' => 'yu',
                            '�' => 'ya',
                            '�' => 'ya', 
                            '/' => '', 
                            '.' => '', 
                            ':' => '', 
                            '\\' => '',
                            '1' => '1',
                            '0' => '0',
                            '2' => '2',
                            '3' => '3',
                            '4' => '4',
                            '5' => '5',
                            '6' => '6',
                            '7' => '7',
                            '8' => '8',
                            '9' => '9'
                            
                );
    
    }//end func
    
    
}//end class

/**
 * function return array to convert string in russian to translit 
 **/

