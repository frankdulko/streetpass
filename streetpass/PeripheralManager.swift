//
//  CBPeripheralManager.swift
//  streetpass
//
//  Created by Frank Dulko on 8/18/23.
//

import Foundation
import CoreBluetooth

class PeripheralManager: NSObject, CBPeripheralManagerDelegate, ObservableObject {

    @Published var pm : CBPeripheralManager
    private var service : CBUUID!
    
    init(pm: CBPeripheralManager = CBPeripheralManager()) {
        self.pm = pm
        super.init()
        pm.delegate = self
        print("~~~~ pm init")
    }
    
    
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        switch peripheral.state {
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
                addServices()
            @unknown default:
                print("Unknown State")
            }
    }
    
    func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error: Error?) {
        if error != nil {
            print(error)
        }
    }
    
    func addServices() {
        var key = "2E2376E5-CC7B-4DD6-954C-2E0BD02A3087"
        var value = "2E2376E5-CC7B-4DD6-954C-2E0BD02A3087"
        service = CBUUID(string: key)
        let myService = CBMutableService(type: service, primary: true)
        pm.add(myService)
        startAdvertising()
    }
    
    func startAdvertising(){
        print("~~~~ now advertising: " + service.uuidString)
        pm.startAdvertising([CBAdvertisementDataLocalNameKey : "BLEPeripheralApp", CBAdvertisementDataServiceUUIDsKey : [service]])
    }
}
