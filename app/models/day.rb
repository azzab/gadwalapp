class Day
  include Mongoid::Document
  validates_presence_of :day
  validates_uniqueness_of :day   
  # validates_presence_of :fajer
  #  validates_presence_of :zuhr
  #  validates_presence_of :asr
  #  validates_presence_of :maghrib
  #  validates_presence_of :isha
  #  validates_presence_of :quran
  #  validates_presence_of :reading
  #  validates_presence_of :sonan
  #  validates_presence_of :seyam
  #  validates_presence_of :qeyam
  #  validates_presence_of :quranQuantity
  #  
  embedded_in :user
  field :day, :type => Date
  field :fajer, :type => String
  field :zuhr, :type => String
  field :asr, :type => String
  field :maghrib, :type => String
  field :isha, :type => String
  #field :quran, :type => Boolean
  field :reading, :type => Boolean
  field :sonan, :type => Integer
  field :seyam, :type => Boolean
  field :qeyam, :type => String
  field :quranQuantity, :type => String
  field :comments, :type => String
end
