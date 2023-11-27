//
//  ViewController.swift
//  CameraDeomo
//
//  Created by 김수비 on 11/24/23.
//

import UIKit
import MobileCoreServices
import UniformTypeIdentifiers

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    // 뒷 부분에서 필요할 Boolean 속성 선언
    var newMedia: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func useCamera(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()

            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            imagePicker.mediaTypes = [UTType.image.identifier]
            imagePicker.allowsEditing = false // 촬영 후 편집 여부

            self.present(imagePicker, animated: true, completion: nil)
            
            newMedia = true
        }
            
        
    }
    
    @IBAction func useCameraRoll(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.savedPhotosAlbum){
            let imagePicker = UIImagePickerController()

            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            imagePicker.mediaTypes = [UTType.image.identifier]
            imagePicker.allowsEditing = false // 촬영 후 편집 여부

            self.present(imagePicker, animated: true, completion: nil)
            
            newMedia = false
        }
    }
    
    // 촬영을 마치거나 이미지를 선택했을 경우 호출되는 imagePickerController 구현
    func imagePickerController(_ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

           // UIImagePickerController.InfoKey.mediaType
           let mediaType = info[.mediaType] as! NSString

           self.dismiss(animated: true, completion: nil)
        
        if mediaType.isEqual(to: UTType.image.identifier) {
            let image = info[.originalImage] as! UIImage
            
            imageView.image = image
            
            if (newMedia == true) {
                
                UIImageWriteToSavedPhotosAlbum(image, self,
                            #selector(ViewController.image(image:didFinishSavingWithError:contextInfo:)), nil)
            }
        }
        
       }
    
    // 오류가 나면 경고 상자를 통해 사용자에게 경고
    @objc func image(image: UIImage, didFinishSavingWithError error: NSErrorPointer,
                     contextInfo: UnsafeRawPointer) {
        if error != nil {
            print("error")
        }
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

