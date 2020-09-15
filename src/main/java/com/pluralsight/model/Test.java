package com.pluralsight.model;

/**
 * Created by Plamen Admin on 9/14/2019.
 */
public class Test {

    private static boolean isReady = false;

    private static String houseNum="0";

    public Test(){};

    public static boolean isReady(){
        return isReady;
    }

    public static void setReady(){
        isReady=true;
    }

    public static void reset(){isReady=false;}

    public static void setHouseNum(String num){
        houseNum=num;
    }

    public static String  getNum(){
        return houseNum;
    }

    public static void  numReset(){
        houseNum = "0";
    }
}
