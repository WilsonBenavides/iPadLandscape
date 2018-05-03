import UIKit

class ViewController: UIViewController {
    
    let jokerImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "joker"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("console message test...")
        view.addSubview(jokerImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
    }
    
    private func setupLayout() {
        jokerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        jokerImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        jokerImageView.widthAnchor.constraint(equalToConstant: 159).isActive = true
        jokerImageView.heightAnchor.constraint(equalToConstant: 184.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: jokerImageView.bottomAnchor, constant: 100).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

