
# создаем фабрику для тестирования article
FactoryBot.define do
  factory :article do
    #свойства создаём лишь для того чтобы фабрика заработала
    title { "Article title" }
    text { "Article text" }
  end
end