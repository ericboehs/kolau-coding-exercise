class Appointment < ApplicationRecord
  validates :day, inclusion: { in: Date::DAYNAMES }
  validates :start_time, format: { with: /\A([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]\s?([Aa|Pp][Mm])?\z/ }
  validates :end_time, format: { with: /\A([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]\s?([Aa|Pp][Mm])?\z/ }

  # def valid_time_regex
  #   %r{
  #     \A                            # Start and end of string
  #     ([0-9]|0[0-9]|1[0-9]|2[0-3])  # Hour section (e.g. 9, 09, 19, 20, 23)
  #     :                             # Time seperate
  #     [0-5][0-9]                    # Minutes (leading 0 required)
  #     \s?                           # An optional space
  #     ([Aa|Pp][Mm])?                # An optional, case-insensitive meridian (AM/PM)
  #     \z                            # End of string
  #   }x
  # end
end
