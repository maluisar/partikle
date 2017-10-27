class Sample < ActiveRecord::Base
  belongs_to :waterplant, foreign_key: :pwsid, primary_key: :pwsid

  def self.latest_sample_date_by_pwsid(pwsid)
    Sample.where("pwsid = ?", pwsid).order(collection_date: :desc).first.collection_date
  end


end