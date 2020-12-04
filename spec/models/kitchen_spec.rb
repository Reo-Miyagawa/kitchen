require 'rails_helper'

RSpec.describe Kitchen, type: :model do
  before do
    @kitchen = FactoryBot.build(:kitchen)
  end

  describe 'リクエスト機能' do
    context 'リクエストがうまくいくとき' do
      it 'image、name、genre_idが存在すれば登録できる' do
        expect(@kitchen).to be_valid
      end
    end

    context 'リクエストがうまくいかないとき' do
      it 'imageが空だと登録できない' do
        @kitchen.image = nil
        @kitchen.valid?
        expect(@kitchen.errors.full_messages).to include("Image can't be blank")
      end

      it 'nameが空だと登録できない' do
        @kitchen.name = ''
        @kitchen.valid?
        expect(@kitchen.errors.full_messages).to include("Name can't be blank")
      end

      it 'genre_idが空だと登録できない' do
        @kitchen.genre_id = 0
        @kitchen.valid?
        expect(@kitchen.errors.full_messages).to include('Genre select')
      end
    end
  end
end
