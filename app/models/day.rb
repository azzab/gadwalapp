class Day
  include Mongoid::Document
  embedded_in :user
  field :day, :type => Time
  field :fajer, :type => String
  field :zuhr, :type => String
  field :asr, :type => String
  field :maghrib, :type => String
  field :isha, :type => String
  field :quran, :type => Boolean
  field :reading, :type => Boolean
  field :sonan, :type => Integer
  field :seyam, :type => Boolean
  field :qeyam, :type => String
  field :quranQuantity, :type => String
end
