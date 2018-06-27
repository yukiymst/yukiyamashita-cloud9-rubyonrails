class ContactsController < ApplicationController
  
  def new  #newアクションの実行
    @contact = Contact.new
  end
  
  def create  #createアクションの実行
    @contact = Contact.new(contact_params)
    if @contact.save  #contactがsaveできたら実行
      redirect_to new_contact_path  #/contacts/newへリダイレクト
    #   notice: "ブログを作成しました！"
    else
      render 'new'  #createアクションでnew.html.erbを呼び出す
    end
  end
  private
  def contact_params  #contactキーのnameとemailとcontentのみ取得を許可
    params.require(:contact).permit(:name, :email, :content)
  end
end
