class User < ActiveRecord::Base
  belongs_to :group, class_name: 'UserGroup', inverse_of: :users

  has_many :subscriptions, dependent: :destroy, inverse_of: :user
  has_many :subscribed_lessons, class_name: 'Lesson', through: :subscriptions, source: :lesson

  has_and_belongs_to_many :courses, inverse_of: :organizers, join_table: 'courses_organizers', foreign_key: 'organizer_id'
  has_many :organized_lessons, class_name: 'Lesson', through: :courses, source: :lessons

  devise :invitable, :database_authenticatable, :confirmable, :recoverable, :rememberable,
         :trackable, :validatable, :registerable

  validates :group, presence: true
  validates :full_name, presence: true

  scope :ordered_by_name, ->{ order('full_name ASC') }

  def subscription_to(lesson)
    subscriptions.find_by(lesson: lesson)
  end

  def subscribed_to?(lesson)
    !!subscription_to(lesson)
  end
end
