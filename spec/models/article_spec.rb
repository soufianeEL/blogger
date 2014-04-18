# == Schema Information
#
# Table name: articles
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  body               :text
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'rspec'

describe 'Article' do

  it 'not valid without a title' do
    article = Article.new(title: "nil")
    article.should_not be_valid
  end

  it 'raises an error when saving without author' do
    pending
    article = Article.new(author: nil)
    expect{article.save!}.to raise_error
  end



end
