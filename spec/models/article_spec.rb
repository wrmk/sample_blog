require 'rails_helper'

describe Article do
  describe "validations" do
    it { should validate_presence_of :text }
    it { should validate_presence_of :title }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      #создаем объект article хитрым способом
      article = create(:article, title: 'testing title')
      # assert, проверка
      expect(article.subject).to eq 'testing title'
    end
  end

  describe "#last_comment" do
    it "returns last comment" do
      #создаем статью с комментариями
      article = create(:article_with_comments)

      #проверка
      expect(article.last_comment.body).to eq 'bla bla bla 3'
    end
  end
end
