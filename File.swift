//
//  File.swift
//  baitapbuoi2
//
//  Created by Toan on 12/28/19.
//  Copyright © 2019 Toan. All rights reserved.
//

import Foundation
 

// bai tren lop
// bai 1 ,2,3
func timsolonnhatbenhat(a:Int ,b:Int)
{
    if(a>b){
        print("so lon nhat la so \(a) ")
    }else if (a<b)
    {
        print("so lon nhat la so \(b) ")
    }else
    {
        print("ca 2 so den bang nhau va bang \(a)")
    }
}
func tamgiac(a : Int , b:Int ,c:Int){
    if(a+b>c || b+c > a || a+c > b){
        var dientich = a*b*c
        
        print("3 canh tren la 1 tam giac va co dien tich la \(dientich)")
        
    }else{
        print("3 canh tren ko phai la tam giac")
    }
}
func kiemtranamnhuan(year :Int){
    if(year % 400 == 0 ){
        if(year % 400 == 0 ){
            print( "nam \(year) la nam nhuan")
        }else {
            print("nam \(year)  khong  phai la nam nhuan ")
        }
    }else if(year % 4 == 0){
        print( " nam\(year) la nam nhuan ")
    }else {
        print( " nam \(year) ko phai la nam nhuan ")    }
}
/*4, Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
    - Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
    - Hãy in ra theo dạng “Giờ : Phút : Giây”
5, Tìm số lớn thứ 2 trong mảng số nguyên
```
*/
func tinhthoigian(  ){
     print("nhap gio")
    var   gio : Int =  (Int ( readLine( ) ?? "0")) ?? 0
     print("nhap phut")
    var phut = Int ( readLine( ) ?? "0") ?? 0
    print("nhap giay")
    var giay :Int = Int ( readLine( ) ?? "0") ?? 0
     print("nhap x")
    var x  :Int = Int ( readLine( ) ?? "0") ?? 0
    var phandu : Int
    var phannguyen : Int
    
    repeat{
    
        phannguyen = x/60
        phut += 1
        phandu =  x%60
        giay += phandu
    
         if( giay > 60   ){
                  phut += 1
                  giay == 0
              }
            if( phut > 60 ){
                  gio += 1
                  phut == 0
              }
        
    }while x<60
    
    print("gio sau \(x)  la  \(gio): \(phut) :\(giay)   " )
}

//5, Tìm số lớn thứ 2 trong mảng số nguyên
func TimSoLonNhat ( ) {
    var sophantu : Int
    print("nhap so phan tu ")
    sophantu = Int( readLine() ?? "0") ?? 0
     var  mang  : [Int]=[]
    for i in 0...sophantu
    {
        print("nhap so phan tu trong mang")
        mang.append(Int(readLine() ?? "0") ?? 0  )
    }
    mang.sort()
    print(mang[2])
}
/*1. Nhập vào điểm trung bình của học sinh và in ra màn hình xếp loại tương ứng với mức điểm đó
(xếp hạng: (>8: Giỏi,  [5, 8): Trung bình, <5: Khá]), nếu nhập ngoài khoảng [1, 10] thì yêu cầu nhập lại)
 */
func TimDiemTrungBinh(   ){
    print("nhap diem ban muon  xep hang")
    var diem : Int = Int(readLine() ?? "-1" ) ?? -1
    if (diem >= 8 && diem <= 10 )   {
        print( "  xep hang cua ban la gioi" )
    }else if (diem >= 5 && diem < 8 ){
        print("xep hang cua ban la xep hang trung binh ")
    }else if (diem < 5 &&  diem >= 0){
        print("xep hang cua ban la yeu")
    }else {
        print("moi nhap lai")
        diem = Int(readLine() ?? "0") ?? 0
    }
    
    
    
    }
    /* 2. Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).
 */

func TimN( )
{
    print( " nhap so can tim")
    var m : Int = Int (readLine() ?? "0") ?? 0
    var  mang : [Int] = []
    var mang2 :[Int] = []
    var giaithua2: Int = 1
    var giaithua : Int = 1
    repeat{
                   for i in 1...m {
  
            giaithua = giaithua * i
                    mang.append( giaithua)
            }
        
        
        m = m -  1
    } while m > 1
    mang.sort()
    for n in mang {
        print(n )
    }
    print(mang[1])
    }

 /*
 6,Khai báo một mảng có 5 phần tử là các chuỗi “An”,“Long”,"Trang”,”Nam”,”Lam”.
 - Chèn tên mới “Quang" vào vị trí 2.
 - Xóa tên ở cuối mảng
 - Khai báo biến t có giá trị là “Nhung”, kiểm tra xem biến t có trong mảng hay không ? */
func Mang(){
    var mang :[String] = ["an" , " long", "trang","nam","lam" ]
    print("nhap ten ban muon chen")
  var  Ten : String = readLine( ) ?? " 0 "
    print("chen vi tri muon thay the ")
    var ViTri : Int = Int(readLine() ?? "0") ?? 0
    mang.replaceSubrange(  ViTri-1...ViTri , with: [Ten])
    for n in mang {
        print(n)
    }
    print("mang sau khi bi xoa")
    mang.remove(at:3)
    for i in mang {
        print(i)
    }
    print("nhap gia tri muon tim")
    var gt = readLine() ?? "0"
    gt.lowercased()
    for j in mang {
        if(gt == j ){
            print(j )
            
        }
    }
}
/*7, Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)
        *
      * * *
    * * * * *
8, Viết chương trình vẽ một chữ X bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 0 và là số lẻ)
    *   *
     * *
      *
     * *
    *   *
*/
func Insao(){
    print("dien chieuu cao")
    var n : Int = Int(readLine() ?? "0") ?? 2
    for i in 1...n{
    
        for a in 1...n-i{
             print("-")
    }
        for a in 1...2*i-1{
            print("*")
            
        }
        
    }
}
