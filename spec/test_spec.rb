# RSpec

# describe：テストグループ
describe '四則演算' do
  # context：一塊のテストをまとめている
  context '足し算' do
    # it：具体的な内容を記述
    it '1 + 1 は 2 になる' do
      # expect：()に期待値を記述。　to：期待している値が「～であること」
      # eq＝イコール：expectの期待値が同値であるか判定
      expect(1 + 1).to eq 2
    end
  end
  context '足し算' do
    it '1 + 1 は 2 になる' do
      expect(1 + 1).to eq 3
    end
  end
end