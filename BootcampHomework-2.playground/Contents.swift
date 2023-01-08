import UIKit

class Hesapla {
    
    func sicaklik(celcius: Double) -> Double{
        var fahrenheit = celcius * 1.8 + 32
        
        return fahrenheit
    }
    
    // Sorudaki gibi return edilecek bir değer girilmemiştir.
    func cevre(genislik: Double, uzunluk:Double){
        let cevre = (genislik + uzunluk) * 2
        print("Dikdörtgenin çevresi : \(cevre) cm'dir.")
    }
    
    func faktöriyel(n: Int) -> Int {
        if n == 0 {
            return 1
        }else {
            return n * faktöriyel(n: n - 1)
        }
    }
    // İlk başta for döngüsü ile yapamadım. Bu çözümünü internetten buldum. NOT: DÖNGÜLERE ÇALIŞILACAK!
    func faktöriyel2(sayı: Int) -> Int {
        var result = 1
        for i in 1...sayı {
            result *= i
        }
        return result
    }
 // Büyük küçük harf duyarlılığı olduğu için büyük harfleri okumuyor bu sorunu çözemedim.
    func sorgulA(kelime: String) -> Int {
        var skor = 0
        let a = "a"
        for a in kelime {
            if a == "a"{
                skor += 1
            }
        }
        return skor
    }
    
    // Aynı anda string ve integer değer döndüremedim. Bu yüzden sonucu stringe çevirerek return sonucunu aldım.
    func acilar(kenarSayisi: Int) -> String {
        if kenarSayisi < 3 {
            return "Çokgenlerin kenar sayıları en az 3 olmalıdır."
        } else{
            let icAcilarToplami = (kenarSayisi - 2) * 180
            return String(icAcilarToplami)
        }
    }
    // Aşağıdaki iki fonksiyonda eksi değerleri nasıl dışlayacağımı bulamadım.
    func iscilikAlacakları(gun: Int) -> Int {
        let mesai = gun * 8
        let fazlaMesai = mesai - 160
        let normalUcret = mesai * 10
        let fazlaMesaiUcreti = normalUcret + (fazlaMesai * 20)
        
        if fazlaMesai > 0 {
            return fazlaMesaiUcreti
        }else {
            return normalUcret
        }
    }
    
    func internetUcreti(kota: Int) -> Int {
        let sabitUcret = 100
        let asimUcreti = (kota - 50) * 4
        
        if kota > 50 {
            return sabitUcret + asimUcreti
        }else {
            return sabitUcret
        }
    }
    
    
}

let sonuc = Hesapla()

sonuc.sicaklik(celcius: 72.18)

sonuc.cevre(genislik: 4, uzunluk: 5)

sonuc.faktöriyel(n: 5)
sonuc.faktöriyel2(sayı: 5)

sonuc.sorgulA(kelime: "anahtar")

sonuc.acilar(kenarSayisi: 3)

sonuc.iscilikAlacakları(gun: 7)

sonuc.internetUcreti(kota: 60)

