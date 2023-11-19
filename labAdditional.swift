//
//  main.swift
//  SWIFTlab4
//
//  Created by Aleksandra Olejarz on 11/18/23.
//

import Foundation
////zad3.6
print("Wprowadz bok a prostokata: ")
var bokA = Double(readLine()!)!
print("Wprowadz bok b prostokata: ")
var bokB = Double(readLine()!)!
var obwod = 2*bokA + 2*bokB
var pole = bokA*bokB
var stringA = "Bok a: \(bokA), bok b: \(bokB), obwod: \(obwod), pole: \(pole)"
print(stringA)
////zad3.7
print("Podaj kwote w PLN: ")
var pln = Double(readLine()!)!
var usd = pln/3.9
print(String(format: "Kwota w dolarach wynosi $%.2lf",usd))
////zad4.5
print("Wprowadz kod pocztowy: ")
var kod = readLine()!
if(kod.count == 6 && kod.contains("-"))
{
switch (kod)
{
case let x where x.hasPrefix("0"):
    print("Wojewodztwo warszawskie")
case let x where x.hasPrefix("1"):
    print("wojewodztwo olsztynskie i bialostockie")
case let x where x.hasPrefix("2"):
    print("wojewodztwo lubelskie i kieleckie")
case let x where x.hasPrefix("3"):
    print("wojewodztwo krakowskie i rzeszowskie")
case let x where x.hasPrefix("4"):
    print("wojewodztwo katowickie i opolskie")
case let x where x.hasPrefix("5"):
    print("wojewodztwo wroclawskie")
case let x where x.hasPrefix("6"):
    print("wojewodztwo poznanskie i zielonogorskie")
case let x where x.hasPrefix("7"):
    print("wojewodztwo szczecinskie i koszalinskie")
case let x where x.hasPrefix("8"):
    print("wojewodztwo gdanskie i bydgoskie")
case let x where x.hasPrefix("9"):
    print("wojewodztwo lodzkie")
default:
    print("Wprowdzono niepoprawny kod pocztowy, sporobuj ponownie")

}
}
else
{
    print("Wprowadzono kod pocztowy o  niepoprawnej dlugosci lub formacie, wprowadz kod w formacie XX-XXX i sprobuj ponownie")
}
//zad 4.7
print("Wprowadz swoj numer PESEL")
var pesel = readLine()!
if(pesel.count == 11){
    let oznaczeniePlci = pesel[pesel.index(pesel.startIndex,offsetBy: 9)]
var oznaczeniePlciB = pesel[pesel.index(pesel.endIndex,offsetBy: -2)]

switch(oznaczeniePlci)
{
case "0","2","4","6","8":
    print("Kobieta")
case "1","3","5","7","9":
    print("Mezczyzna")
default:
    print("Wprowadzono niepoprawny numer PESEL, sprobuj ponownie")
}
}
else
{
    print("Wpowadzno numer PESEL niepoprawnej dlugosci, PESEL ma 11 cyfr, sprobuj ponownie")
}
//zad5.1
for i in stride(from:1,to:26,by:1)
{
    print("for..in: \(i)")
}
print("")
var m = 1
while(m<26)
{
    print("while: \(m)")
    m+=1
}
var u = 1
repeat{
    print("repeat..while: \(u)")
    u+=1
}while(u<26)

//zad5.2
for i in stride(from:1, to:26, by:3)
{
    print("for..in: \(i)")
}
var y = 1
while(y<26)
{
    print("while: \(y)")
    y+=3
}

var j = 1
repeat{
    print("repeat..while \(j)")
    j+=3
}while(j<26)

//zad5.3
//CIAG FIBONACCIEGO
print("Wprowadz wartosc zmiennej licz: ")
var licz = Int(readLine()!)!
var a = 1
var b = 0
var c = 1
while(c<licz)
{
    print(c)
    c = a + b
    b = a
    a = c

}

//zad 5.4
print("Wprowadz liczbe calkowita: ")
var liczba = Int(readLine()!)!

switch(liczba)
{
case let x where x==1:
    print("Liczba nie jest liczba pierwsza")
case let x where x==2 || x == 3 || x == 5 || x == 7:
    print("Liczba jest liczba pierwsza")
case let x where x%2 == 0 || x%3 == 0 || x%4 == 0 || x%5 == 0 || x%6 == 0 || x%7 == 0 || x%8 == 0 || x%9 == 0 :
    print("Liczba nie jest liczba pierwsza")
default:
    print("Liczba jest liczba pierwsza")

}
//zad 5.5
print("Wprowadz liczbe(co najmniej 3 cyfry): ")
var wczytana = readLine()!
if(Int(wczytana) != nil){
var liczba = Int(wczytana)!
var suma = 0
while(wczytana.count >= 3 && liczba > 0 )
{
    suma += liczba%10
    liczba /= 10
    
}

let sredniaArytmetyczna = Double(suma)/Double(wczytana.count)

if(sredniaArytmetyczna != 0.00){
print(String(format: "Srednia arytmetyczna cyfr wczytanej liczby jest rowna: %.2lf", sredniaArytmetyczna))
}
else
{
    print("Wprowadzono niepoprawna liczbe, sprobuj ponownie")
}
}
else
{
    print("Wprowadzono niepoprawna wartosc, sprobuj ponownie")
}

//zad5.6
//PALINDROM
print("Wprowadz palindrom: ")
var wyrazA = readLine()!
var wyrazB = wyrazA.reversed()
var flag = 0
for i in stride(from:0, to:wyrazA.count,by:1)
{
    if(wyrazA[wyrazA.index(wyrazA.startIndex,offsetBy: i)] != wyrazB[wyrazB.index(wyrazB.startIndex,offsetBy: i)])
    {
        flag += 1
        print("\(wyrazA[wyrazA.index(wyrazA.startIndex,offsetBy: i)])!=\(wyrazB[wyrazB.index(wyrazB.startIndex,offsetBy: i)])")    }
    else
    {
        print("\(wyrazA[wyrazA.index(wyrazA.startIndex,offsetBy: i)])==\(wyrazB[wyrazB.index(wyrazB.startIndex,offsetBy: i)])")    }
}
if(flag == 0)
{
    print("Wyraz jest palindromem")
}
else
{
    print("Wyraz nie jest palidoromem")
}
