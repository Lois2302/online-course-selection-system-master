package com.example.demo;

import org.junit.Test;

/**
 * @ClassName TestSuite
 * @Author ttaurus
 * @Date Create in 2020/5/27 15:43
 */
public class TestSuite{

    class HelloWorld{
        public String sayHello(){
            return "Hello World";
        }

        public  int abs(int n){
            return n >= 0 ? n : (-n);

        }

    }

    class ShopAssistant {
        public String gainPresent(String sex){
            if(sex=="男"){
                return"剃须刀";
            }
            else{
                return"护手霜";
            }

        }
    }
    
    @Test
    public void testHelloWorld(){
        HelloWorld helloWorld = new HelloWorld();
        System.out.println(helloWorld.sayHello());
        System.out.println(helloWorld.abs(-55));
        
    }
    
    @Test
    public void test2(){
        ShopAssistant shopAssistant = new ShopAssistant();
        System.out.println(shopAssistant.gainPresent("男"));
        System.out.println(shopAssistant.gainPresent("女"));
    }
    
    @Test
    public void test3(){
        HelloWorld helloWorld = new HelloWorld();
        
        
    }

}
