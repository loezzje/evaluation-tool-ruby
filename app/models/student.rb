class Student < ApplicationRecord
  belongs_to :batch
  has_many :evaluations, dependent: :destroy

  def set_month_one
    start_date = self.batch.start_date
    return start_date.mon
  end


  def set_month_three
    end_date = self.batch.end_date
    return end_date.mon
  end

  def set_month_two
    if (self.set_year_three * 12 + self.set_month_three) - (self.set_year_one * 12 + self.set_month_one) > 1
      if self.set_month_one == 12
        return 1
      else
        return self.set_month_one + 1
      end
    end
  end

  def set_year_one
    start_date = self.batch.start_date
    puts start_date.year
    return start_date.year

  end

  def set_year_two
    if self.set_month_one == 12
      puts self.set_year_three
      return self.set_year_three
    else
      puts self.set_year_one
      return self.set_year_one
    end
  end

  def set_year_three
    end_date = self.batch.end_date
    puts end_date.year
    return end_date.year
  end






end
