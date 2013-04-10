class Measurement < ActiveRecord::Base
  belongs_to :track
  belongs_to :step

  validates :arms, :chest, :hips, :thighs, :waist, :weight, :track, :step,
    presence: true

  # TODO Move to strong params in controller.
  # attr_accessible :arms, :chest, :hips, :thighs, :waist, :weight, :step, :track

  delegate :name, to: :step

  after_create :update_track

  private

  def update_track
    track.update_attribute :last_step_index, step.position - 1
  end

end