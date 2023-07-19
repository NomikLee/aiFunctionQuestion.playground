// 引入 UIKit 和 Foundation 框架，儘管在此程式碼中並未直接使用它們
import UIKit
import Foundation

// 計算股票投資的年均收益率
func returnOnStockInvestment(initialInvestment: Double, finalValue: Double, dividends: Double, years: Double)  {
    // 計算複利年增長率
    var CompoundAnnualGrowthRate = pow((finalValue + dividends) / initialInvestment, 1/years) - 1
    CompoundAnnualGrowthRate *= 100 // 將年增長率轉換為百分比

    // 輸出計算結果
    print("年均收益率為 \(round(CompoundAnnualGrowthRate)) %\n")
}

// 呼叫 returnOnStockInvestment 函式，計算股票投資的年均收益率
returnOnStockInvestment(initialInvestment: 500000, finalValue: 800000, dividends: 7000, years: 5)


// 計算總銷售額
func totalSales(unitPrice: Double, quantity: Int)  {
    // 乘以數量以計算總銷售額
    var total = unitPrice * Double(quantity)
    
    // 輸出計算結果
    print("總銷售額為 \(total) 元\n")
}

// 呼叫 totalSales 函式，計算總銷售額
totalSales(unitPrice: 168, quantity: 87)


// 計算車輛排氣組成成分的百分比
func exhaustComponents(carbonMonoxide co: Double, hydrocarbon hc: Double, _ nox: Double) -> String {
    // 計算總排氣量
    let totelExhaust = co + hc + nox
    // 計算一氧化碳的佔比百分比
    var cO = round((co  / totelExhaust) * 100)
    // 計算碳氫化合物的佔比百分比
    var hC = round((hc / totelExhaust) * 100)
    // 計算氮氧化物的佔比百分比
    var nOX = round((nox  / totelExhaust) * 100)
    
    // 輸出計算結果
    print("一氧化碳的佔比為\(cO)%")
    print("碳氫化合物的佔比為\(hC)%")
    print("氮氧化物的佔比為\(nOX)%")
    
    // 回傳總排氣量字串
    return "總排氣量為\(totelExhaust)克"
}

// 呼叫 exhaustComponents 函式，計算車輛排氣組成成分的百分比
print(exhaustComponents(carbonMonoxide: 40.8, hydrocarbon: 60.9, 55.4))
