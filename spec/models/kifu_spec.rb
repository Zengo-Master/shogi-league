require 'rails_helper'

RSpec.describe Kifu, type: :model do
  before do
    @kifu = FactoryBot.build(:kifu)
  end

  describe '棋譜提出' do
    context '棋譜提出がうまくいくとき' do
      it 'date、sente_id、gote_id, type_id, kifuが正しく入力されれば出品できること' do
        expect(@kifu).to be_valid
      end
    end

    context '棋譜提出がうまくいかないとき' do
      it 'dateが空だと提出できないこと' do
        @kifu.date = ''
        @kifu.valid?
        expect(@kifu.errors.full_messages).to include("日付を入力してください")
      end
      it 'sente_idが空だとできないこと' do
        @kifu.sente_id = ''
        @kifu.valid?
        expect(@kifu.errors.full_messages).to include("先手を入力してください", "先手は数値で入力してください")
      end
      it 'gote_idが空だと提出できないこと' do
        @kifu.gote_id = ''
        @kifu.valid?
        expect(@kifu.errors.full_messages).to include("後手を入力してください", "後手は数値で入力してください")
      end
      it 'result_idが空だと提出できないこと' do
        @kifu.result_id = ''
        @kifu.valid?
        expect(@kifu.errors.full_messages).to include("結果を入力してください", "結果は数値で入力してください")
      end
      it 'kifuが空だと提出できないこと' do
        @kifu.kifu = ''
        @kifu.valid?
        expect(@kifu.errors.full_messages).to include("棋譜を入力してください")
      end
    end
  end
end
