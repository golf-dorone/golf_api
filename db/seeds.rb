# 3.times do |i|
#     Golf.create!(title: "ゴルフ場 #{i + 1}", description: "ゴルフ場詳細が入ります")
#   end
3.times do |i|
    Inquiry.create!(title: "タイトル #{i + 1}", description: "お問い合わせ詳細", name: "name", contact: "090-xxxx-xxxx")
  end