import UIKit

class ViewController: UIViewController {
    
    let jokerImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "joker"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
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
        //view.addSubview(jokerImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
    }
    
    private func setupLayout() {
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        //topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        topImageContainerView.addSubview(jokerImageView)
        jokerImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        jokerImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        jokerImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        //topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        //topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        //jokerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //jokerImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        //jokerImageView.widthAnchor.constraint(equalToConstant: 159).isActive = true
        //jokerImageView.heightAnchor.constraint(equalToConstant: 184.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: jokerImageView.bottomAnchor, constant: 100).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

