//用 AVPlayer 播音樂
import AVFoundation

let url = URL(string:
"https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/55/a9/80/55a98016-d493-eaf5-94f4-1b06ea7c4387/mzaf_5840316412922246048.plus.aac.p.m4a")

let player = AVPlayer(url: url!)

player.play()



//AVPlayerViewController 播影片
import AVKit
import PlaygroundSupport
let url = URL(string: "https://movietrailers.apple.com/movies/marvel/eternals/eternals-trailer-2_h1080p.mov")
let player = AVPlayer(url: url!)
let controller = AVPlayerViewController()
controller.player = player
PlaygroundPage.current.liveView = controller
player.play()



//顯示地圖
import MapKit
import PlaygroundSupport

//設定地圖大小，中心點經緯度，與比例尺
let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.039989, longitude: 121.511997), latitudinalMeters: 2000, longitudinalMeters: 2000)

//地圖需要是中文的
UserDefaults.standard.set("zh", forKey: "AppleLanguages")

//設定總統府定位點，標題，與副標題
let palaceAnnotation = MKPointAnnotation()
palaceAnnotation.title = "總統府"
palaceAnnotation.coordinate = CLLocationCoordinate2D(latitude: 25.039989, longitude: 121.511997)
palaceAnnotation.subtitle = "總統的辦公室"
mapView.addAnnotation(palaceAnnotation)

//設定立法院定位點，標題，與副標題
let LegislatureAnnotation = MKPointAnnotation()
LegislatureAnnotation.title = "立法院"
LegislatureAnnotation.coordinate = CLLocationCoordinate2D(latitude: 25.043942, longitude: 121.519611)
LegislatureAnnotation.subtitle = "很多立法委員"
mapView.addAnnotation(LegislatureAnnotation)

//地圖的樣式
mapView.mapType = .hybrid

//在playgroung中運行
PlaygroundPage.current.liveView = mapView
