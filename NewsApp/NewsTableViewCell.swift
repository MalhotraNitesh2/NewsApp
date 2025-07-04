import UIKit

class NewsTableViewCellViewModel {
    var title: String
    var description: String
    var imageURL: URL?
    var imageData: Data?
    
    init(title: String, description: String, imageURL: URL? = nil, imageData: Data? = nil) {
        self.title = title
        self.description = description
        self.imageURL = imageURL
        self.imageData = imageData
    }
}

class NewsTableViewCell: UITableViewCell {
    
    static let identifier = "NewsTableViewCell"
    
    private let newsTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.numberOfLines = 0
        return label
    }()
    
    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    private let newsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(newsTitleLabel)
        contentView.addSubview(subTitleLabel)
        contentView.addSubview(newsImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        newsImageView.frame = CGRect(
            x: contentView.frame.size.width - 120,
            y: 5,
            width: 100,
            height: contentView.frame.size.height - 10
        )
        
        newsTitleLabel.frame = CGRect(
            x: 10,
            y: 5,
            width: contentView.frame.size.width - 150,
            height: (contentView.frame.size.height / 2) - 5
        )
        
        subTitleLabel.frame = CGRect(
            x: 10,
            y: newsTitleLabel.frame.origin.y + newsTitleLabel.frame.size.height + 5,
            width: contentView.frame.size.width - 150,
            height: (contentView.frame.size.height / 2) - 10
        )
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        newsTitleLabel.text = nil
        subTitleLabel.text = nil
        newsImageView.image = nil
    }
    
    // MARK: - Configure
    
    func configure(with viewModel: NewsTableViewCellViewModel) {
        newsTitleLabel.text = viewModel.title
        subTitleLabel.text = viewModel.description
        
        newsImageView.image = UIImage(systemName: "photo") // placeholder
            
            if let data = viewModel.imageData {
                newsImageView.image = UIImage(data: data)
            } else if let url = viewModel.imageURL {
                print("Fetching image from: \(url)")
                URLSession.shared.dataTask(with: url) { data, _, error in
                    if let error = error {
                        print("Image download failed: \(error.localizedDescription)")
                        return
                    }
                    guard let data = data else {
                        print("Image download failed: No data")
                        return
                    }
                    viewModel.imageData = data
                    DispatchQueue.main.async {
                        self.newsImageView.image = UIImage(data: data)
                    }
                }.resume()
        }
    }
}

