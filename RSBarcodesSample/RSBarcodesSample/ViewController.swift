//
//  ViewController.swift
//  RSBarcodesSample
//
//  Created by R0CKSTAR on 6/10/14.
//  Copyright (c) 2014 P.D.Q. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let g = RSUnifiedCodeGenerator.shared
        
        let c39r = g.generateCode("2166529V", machineReadableCodeObjectType: AVMetadataObjectTypeCode39Code)
        
        let c39m43r = g.generateCode("CODE 39", machineReadableCodeObjectType: AVMetadataObjectTypeCode39Mod43Code)
        
        let ce39r = g.generateCode("R0ckStar", machineReadableCodeObjectType: RSBarcodesTypeExtendedCode39Code)
        
        let ean8r = g.generateCode("47112346", machineReadableCodeObjectType: AVMetadataObjectTypeEAN8Code)
        
        let ean13r = g.generateCode("6902890884910", machineReadableCodeObjectType: AVMetadataObjectTypeEAN13Code)
        
        let isbn13r = g.generateCode("9789504200857", machineReadableCodeObjectType: RSBarcodesTypeISBN13Code)
        
        let issn13r = g.generateCode("9771234567003", machineReadableCodeObjectType: RSBarcodesTypeISSN13Code)
        
        let itf14r = g.generateCode("15400141288763", machineReadableCodeObjectType: AVMetadataObjectTypeITF14Code)
        
        let upcer = g.generateCode("04252614", machineReadableCodeObjectType: AVMetadataObjectTypeUPCECode)
        
        let c93r = g.generateCode("TEST93", machineReadableCodeObjectType: AVMetadataObjectTypeCode93Code)
        
        let c128r = g.generateCode("123456", machineReadableCodeObjectType: AVMetadataObjectTypeCode128Code)
        
        // Using custom code table for code 128.
        let c128ar = RSCode128Generator(codeTable: .A).generateCode("123456", machineReadableCodeObjectType: AVMetadataObjectTypeCode128Code)
        
        let c128br = RSCode128Generator(codeTable: .B).generateCode("123456", machineReadableCodeObjectType: AVMetadataObjectTypeCode128Code)
        
        let c128cr = RSCode128Generator(codeTable: .C).generateCode("123456", machineReadableCodeObjectType: AVMetadataObjectTypeCode128Code)
        
        let pdf417r = g.generateCode("123456", machineReadableCodeObjectType: AVMetadataObjectTypePDF417Code)
        
        let qrr = g.generateCode("yeahdongcn", machineReadableCodeObjectType: AVMetadataObjectTypeQRCode)
        
        let aztecr = g.generateCode("yeahdongcn", machineReadableCodeObjectType: AVMetadataObjectTypeAztecCode)
        
        println()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
