//
//  ViewController.swift
//  Charts-Tutorial
//
//  Created by INTENG CHAN on 16/06/2021.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var lineChartBox: LineChartView!
    
    @IBOutlet weak var pieChartBox: PieChartView!
    
    @IBOutlet weak var barChartBox: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let data = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
        graphLineChart(dataArray: data)
        graphPieChart(dataArray: data)
        graphBarChart(dataArray: data)
    }

    func graphLineChart(dataArray: [Int]){
        // Make lineChartBox size have width and height both equal to width of screen
        lineChartBox.frame = CGRect(x: 0, y:0,
                                    width: self.view.frame.size.width,
                                    height: self.view.frame.size.width / 2)
        
        // Make lineChartBox center to be horizontally centered, but
        // offset towards the top of the screen
        lineChartBox.center.x =  self.view.center.x
        lineChartBox.center.y = self.view.center.y - 240
        
        // Settings when chart has no data
        lineChartBox.noDataText = "No Data Available."
        lineChartBox.noDataTextColor = UIColor.black
        
        // Initialize Array that will eventually be displayed on the graph.
        var entries = [ChartDataEntry]()
        
        // For every element in given dataset
        // Set the X and Y coordinated in a data chart entry
        // and add to the entries list
        for i in 0..<dataArray.count {
            let value = ChartDataEntry(x: Double(i), y: Double(dataArray[i]))
            entries.append(value)
        }
        
        // Use the entries object and a label string to make a LineChartDataSet object
        let dataSet = LineChartDataSet(entries: entries, label: "Line Chart")
        
        // Customize graph settings to your liking
        dataSet.colors = ChartColorTemplates.joyful()
        
        // Make object that will be added to the chart
        // and set  it to the variable in the Storyboard
        let data = LineChartData(dataSet: dataSet)
        lineChartBox.data = data
        
        // Add settings for the chartBox
        lineChartBox.chartDescription?.text = "Pi Values"
        
        // Amimations
        lineChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
    }
    
    func graphPieChart(dataArray: [Int]){
        // Make lineChartBox size have width and height both equal to width of screen
        pieChartBox.frame = CGRect(x: 0, y:0,
                                    width: self.view.frame.size.width,
                                    height: self.view.frame.size.width / 2)
        
        // Make lineChartBox center to be horizontally centered, but
        // offset towards the top of the screen
        pieChartBox.center.x =  self.view.center.x
        pieChartBox.center.y = self.view.center.y
        
        // Settings when chart has no data
        pieChartBox.noDataText = "No Data Available."
        pieChartBox.noDataTextColor = UIColor.black
        
        // Initialize Array that will eventually be displayed on the graph.
        var entries = [ChartDataEntry]()
        
        // For every element in given dataset
        // Set the X and Y coordinated in a data chart entry
        // and add to the entries list
        for i in 0..<dataArray.count {
            let value = ChartDataEntry(x: Double(i), y: Double(dataArray[i]))
            entries.append(value)
        }
        
        // Use the entries object and a label string to make a LineChartDataSet object
        let dataSet = PieChartDataSet(entries: entries, label: "Pie Chart")
        
        // Customize graph settings to your liking
        dataSet.colors = ChartColorTemplates.colorful()
        
        // Make object that will be added to the chart
        // and set  it to the variable in the Storyboard
        let data = PieChartData(dataSet: dataSet)
        pieChartBox.data = data
        
        // Add settings for the chartBox
        pieChartBox.chartDescription?.text = "Pi Values"
        
        // Amimations
        pieChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
    }
    
    func graphBarChart(dataArray: [Int]){
        // Make lineChartBox size have width and height both equal to width of screen
        barChartBox.frame = CGRect(x: 0, y:0,
                                    width: self.view.frame.size.width,
                                    height: self.view.frame.size.width / 2)
        
        // Make lineChartBox center to be horizontally centered, but
        // offset towards the top of the screen
        barChartBox.center.x =  self.view.center.x
        barChartBox.center.y = self.view.center.y + 240
        
        // Settings when chart has no data
        barChartBox.noDataText = "No Data Available."
        barChartBox.noDataTextColor = UIColor.black
        
        // Initialize Array that will eventually be displayed on the graph.
        var entries = [BarChartDataEntry]()
        
        // For every element in given dataset
        // Set the X and Y coordinated in a data chart entry
        // and add to the entries list
        for i in 0..<dataArray.count {
            let value = BarChartDataEntry(x: Double(i), y: Double(dataArray[i]))
            entries.append(value)
        }
        
        // Use the entries object and a label string to make a LineChartDataSet object
        let dataSet = BarChartDataSet(entries: entries, label: "Bar Chart")
        
        // Customize graph settings to your liking
        dataSet.colors = ChartColorTemplates.joyful()
        
        // Make object that will be added to the chart
        // and set  it to the variable in the Storyboard
        let data = BarChartData(dataSet: dataSet)
        barChartBox.data = data
        
        // Add settings for the chartBox
        barChartBox.chartDescription?.text = "Pi Values"
        
        // Amimations
        barChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
    }
}

