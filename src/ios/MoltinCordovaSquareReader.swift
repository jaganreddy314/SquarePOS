import CoreLocation
import AVKit

@objc(MoltinCordovaSquareReader) class MoltinCordovaSquareReader : CDVPlugin, CLLocationManagerDelegate {
    
    private lazy var locationManager = CLLocationManager()
    private var currentCommand: CDVInvokedUrlCommand?
    private var locationPermissionCallback: ((Bool) -> ())?
    

    @objc(startTransaction:)
    func startTransaction( command: CDVInvokedUrlCommand) {
        print("Reader settings flow presented.");
        guard let commandParams = command.arguments.first as? [String: Any],
            let amount = commandParams["amount"] as? Int else {
                            self.commandDelegate.send(CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: "No parameters"), callbackId: command.callbackId)
                            return
                        }
        print("Amounbt passsed : ", amount);
    }


}
