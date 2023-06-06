class Scheduleapp < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20}
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :memo, length: {maximum: 500}

    validate :end_date_check

    def end_date_check
        if start_date == nil
            return
        elsif end_date == nil
            return
        elsif start_date > end_date
            errors.add(:end_date, "は開始日以降を選択してください")
        end
    end
end
