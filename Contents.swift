import UIKit
import Foundation

func returnOnStockInvestment(initialInvestment: Double, finalValue: Double, dividends: Double, years: Double)  {
    var CompoundAnnualGrowthRate = pow((finalValue + dividends) / initialInvestment, 1/years) - 1
    CompoundAnnualGrowthRate *= 100
    
    print("年均收益率為 \(round(CompoundAnnualGrowthRate)) %\n")
}

returnOnStockInvestment(initialInvestment: 500000, finalValue: 800000, dividends: 7000, years: 5)


func totalSales(unitPrice: Double, quantity: Int)  {
    var total = unitPrice * Double(quantity)
    print("總銷售額為 \(total) 元\n")
}

totalSales(unitPrice: 168, quantity: 87)


func exhaustComponents(carbonMonoxide co: Double, hydrocarbon hc: Double, _ nox: Double) -> String {
    
    let totelExhaust = co + hc + nox
    var cO = round((co  / totelExhaust) * 100)
    var hC = round((hc / totelExhaust) * 100)
    var nOX = round((nox  / totelExhaust) * 100)
    
    print("一氧化碳的佔比為\(cO)%")
    print("碳氫化合物的佔比為\(hC)%")
    print("氮氧化物的佔比為\(nOX)%")
    
    return "總排氣量為\(totelExhaust)克"
}

print(exhaustComponents(carbonMonoxide: 40.8, hydrocarbon: 60.9, 55.4))
