# SwiftCountryCodePicker
Country Code picking supporting file for IOS Swift 


## Screenshots
![Simulator Screenshot - iPhone 16 Pro - 2025-01-08 at 11 38 04](https://github.com/user-attachments/assets/a7f0e278-8916-4ea0-8276-2375be6a23dc)
![Simulator Screenshot - iPhone 16 Pro - 2025-01-08 at 11 37 37](https://github.com/user-attachments/assets/6d330090-7655-4a06-ab36-1cde41a5acc8)
![Simulator Screenshot - iPhone 16 Pro - 2025-01-08 at 11 37 42](https://github.com/user-attachments/assets/69054b6d-40d0-4ff2-a162-256bb84ce648)
![Simulator Screenshot - iPhone 16 Pro - 2025-01-08 at 11 37 29](https://github.com/user-attachments/assets/f62c59ac-5f98-4be0-8978-780dc030a7dd)


## Manual Installation

1. Copy the `CountryPickerBottomSheet` folder to your project.
2. add DialCountriesControllerDelegate to Your VC
3. let controller = DialCountriesController(locale: Locale(identifier: "en_US"))
        controller.delegate = self
        controller.show(vc: self)
   
