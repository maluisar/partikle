class PollutantSample < ActiveRecord::Base
  belongs_to :sample, foreign_key: :pwsid, primary_key: :pwsid
  belongs_to :waterplant, foreign_key: :pwsid, primary_key: :pwsid


  def self.latest_samples_by_pwsid(pwsid)
    last_date = Sample.latest_sample_date_by_pwsid(pwsid)
    PollutantSample.where('pwsid = ? and collection_date = ?', pwsid, last_date)
  end

end
