package com.example.demo;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.util.DigestUtils;

import java.util.Scanner;


class DemoApplicationTests{

    @Test
    public void testPinyin() throws BadHanyuPinyinOutputFormatCombination{
        String name = "Jeep";
        char[] charArray = name.toCharArray();
        StringBuilder pinyin = new StringBuilder();
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        //设置大小写格式
        defaultFormat.setCaseType(HanyuPinyinCaseType.UPPERCASE);
        //设置声调格式：
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        for(int i = 0 ; i < charArray.length ; i++){
            //匹配中文,非中文转换会转换成null
            if(Character.toString(charArray[i]).matches("[\\u4E00-\\u9FA5]+")){
                String[] hanyuPinyinStringArray = PinyinHelper.toHanyuPinyinStringArray(charArray[i] , defaultFormat);
                String string = hanyuPinyinStringArray[0];
                pinyin.append(string);
            }else{
                pinyin.append(charArray[i]);
            }
        }
        System.err.println("原来的:"+pinyin);
        System.out.println("缩减后:"+pinyin.toString().substring(0,1));
    }
        
    @Test
    public void test(){
        BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
        String str = "tt";
        String account = "admin";
        String password = "admin";
        String sAccount = DigestUtils.md5DigestAsHex(account.getBytes());
        String sPassword = DigestUtils.md5DigestAsHex(password.getBytes());
        System.out.println(bcryptPasswordEncoder.encode(account));
        //System.out.println(DigestUtils.md5DigestAsHex(account.getBytes())+16);
        //System.out.println(DigestUtils.md5DigestAsHex(password.getBytes()));
        //System.out.println(DigestUtils.md5DigestAsHex((sAccount+str).getBytes()));
        //System.out.println(DigestUtils.md5DigestAsHex(ff.getBytes()));
        //System.out.println(judgeSize(str));
        //System.out.println((str.substring(0,str.length()-1).matches("^[1-3][0-9]$"))+"---"+str.matches("^.{3}$")
        //        +"---"+str.matches("^[1-3][0-9]$"));
    }
    
    @Test
    public void test2(){
        boolean flag;
        Scanner scanner = new Scanner(System.in);
        flag = scanner.nextBoolean();
    }
    
    private boolean judgeSize(String str){
        return (str.substring(0,str.length()-1).matches("^[1-3][0-9]$")&&str.matches("^.{3}$"))
                ||str.matches("^[1-3][0-9]$");
    }
    

}
