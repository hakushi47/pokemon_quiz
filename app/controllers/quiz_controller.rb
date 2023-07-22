class QuizController < ApplicationController
  def index
    
    if @pokemon == Quiz.where(name: 'params[:answer]').or(Quiz.where(number: params[:answer]))
    end
    
  end

  def new
    num = rand (1..52)
    @pokemon =  Quiz.find(num)
    # @pokemon = Pokemon.where(name: 'params[:search]').or(Pokemon.where(number: params[:search]))
    #↑ 送られてきたパラメータ(#{params[:search]}) を用いてDBより名前か番号で検索
    
    
    if @pokemon == nil
      redirect_to pokes_new_path, notice: "エラー！" 
      # また、リクエストが失敗した時の処理も追加します。
    end
    # ここまで追加

  end
end
