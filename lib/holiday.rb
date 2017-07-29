Skip to content
This repository
Search
Pull requests
Issues
Marketplace
Gist
 @stritch-dev
 Sign out
 Watch 22
  Star 0
 Fork 76 learn-co-students/apples-and-holidays-cb-000
 Code  Issues 0  Pull requests 76  Projects 0 Insights
Branch: solution Find file Copy pathapples-and-holidays-cb-000/lib/holiday.rb
2c501f0  on Nov 8, 2016
@bhollan bhollan add anti-hard-coding expectations:solution
6 contributors @kthffmn @SophieDeBenedetto @roseweixel @deniznida @bhollan @alexgriff
RawBlameHistory
44 lines (35 sloc)  1.09 KB
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].map do |holiday, supplies|
    supplies
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help
