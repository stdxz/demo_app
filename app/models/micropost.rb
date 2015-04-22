class Micropost < ActiveRecord::Base
   def micr_params
      params.require(:user).permit(:content, :user_id)
    end
  validates :content, :length => { :maximum => 14 }

  belongs_to :user
end
