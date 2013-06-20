class Tutorial < ActiveRecord::Base
  attr_accessible :unit_id, :user_id, :official_name, :meeting_day, :meeting_location, :meeting_time

  validates_presence_of :user_id
  
  # Model associations
  belongs_to :unit  # Foreign key
  belongs_to :user              # Foreign key
  has_one    :project  			# Foreign key
  has_many   :unit_roles
  
  def name
    # TODO: Will probably need to make this more flexible when
    # a tutorial is representing something other than a tutorial
    "#{meeting_day} #{meeting_time} (#{meeting_location})"
  end
end