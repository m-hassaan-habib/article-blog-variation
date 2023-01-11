# seeds.rb

demo_data = [
  {
    "name" => "Demo Blog",
    "articles" => [
      {
        "article" => "Discover the joy of learning with our innovative platform.",
        "article_variations" => [
          {
            "article_variation" => "Experience the delight of education on our cutting-edge platform.",
            "stat" => {
              "sign_up_count" => 0,
              "click_count" => 0,
              "page_view_count" => 0
            }
          },
          {
            "article_variation" => "Explore the excitement of learning on our state-of-the-art platform.",
            "stat" => {
              "sign_up_count" => 0,
              "click_count" => 0,
              "page_view_count" => 0
            }
          },
          {
            "article_variation" => "Uncover the thrill of education with our advanced platform.",
            "stat" => {
              "sign_up_count" => 0,
              "click_count" => 0,
              "page_view_count" => 0
            }
          },
          {
            "article_variation" => "Embrace the joy of learning through our cutting-edge platform.",
            "stat" => {
              "sign_up_count" => 0,
              "click_count" => 0,
              "page_view_count" => 0
            }
          },
          {
            "article_variation" => "Immerse yourself in the excitement of education with our innovative platform.",
            "stat" => {
              "sign_up_count" => 0,
              "click_count" => 0,
              "page_view_count" => 0
            }
          }
        ]
      }
    ]
  }
]

demo_data.each do |blog|
  blog_data = Blog.create!(name: blog["name"])

  blog["articles"].each do |article|
    article_data = blog_data.articles.create!(article: article["article"])

    article["article_variations"].each do |variation|
      variation_data = article_data.variations.create!(article_variation: variation["article_variation"])
      stat = variation["stat"]
      variation_data.create_stat!(page_view_count: stat["page_view_count"], click_count: stat["click_count"],
        sign_up_count: stat["sign_up_count"])
    end
  end
end
