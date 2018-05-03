import UIKit

class ViewController: UIViewController {
    
    let jokerImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "joker"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("console message test...")
        
        //view.backgroundColor = .yellow
        
        //let imageView = UIImageView(image: #imageLiteral(resourceName: "joker"))
        view.addSubview(jokerImageView)
        //imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        setupLayout()
        
        
        
    }
    
    private func setupLayout() {
        jokerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        jokerImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        jokerImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        jokerImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
}

