package com.company;

public class Main {

    public static void main(String[] args) {
        // write your code here
        for (int i = 1; i < 5; i++) {
            System.out.println("your interate rate" +i+ "Interate Amount will be " +CalculateInterateRate(10000,i));
        }
      System.out.println("******************");
        for(int i=8;i>=2;i--){
            System.out.println("yout interste rate "+i+ "InterastRate will be" +CalculateInterateRate(10000,i));
        }
    }
    public static double CalculateInterateRate(double Amount, double InterateRate){
     return (Amount*(InterateRate/10));
    }
}

