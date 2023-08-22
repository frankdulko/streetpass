//
//  CentralManager.swift
//  streetpass
//
//  Created by Frank Dulko on 8/18/23.
//

import Foundation
import CoreBluetooth

class CentralManager : NSObject, CBCentralManagerDelegate, ObservableObject{
    
    @Published var cm : CBCentralManager
    @Published var p : String
    
    init(cm : CBCentralManager = CBCentralManager()) {
        self.cm = cm
        self.p = "No one near by"
        super.init()
        cm.delegate = self
        print("~~~~ cm init")
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
            case .unknown:
                print("Bluetooth Device is UNKNOWN")
            case .unsupported:
                print("Bluetooth Device is UNSUPPORTED")
            case .unauthorized:
                print("Bluetooth Device is UNAUTHORIZED")
            case .resetting:
                print("Bluetooth Device is RESETTING")
            case .poweredOff:
                print("Bluetooth Device is POWERED OFF")
            case .poweredOn:
                print("Bluetooth Device is POWERED ON")
                scanServices();
            @unknown default:
                print("Unknown State")
            }
    }
    
    func scanServices(){
        var key = "2E2376E5-CC7B-4DD6-954C-2E0BD02A3087"
        var ckey = CBUUID(string: key)
        print("~~~~ now scanning: " + ckey.uuidString)
        cm.scanForPeripherals(withServices: nil);
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        print("~~~~")
        print(peripheral);
        p = peripheral.name ?? "uknown name"
    }
    
}
